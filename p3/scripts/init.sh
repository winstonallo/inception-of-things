#!/bin/bash

k3d_cluster_name="abied-ch"
argocd_namespace="argocd"
dev_namespace="dev"
argocd_server="argocd-server"
argocd_admin_secret="argocd-initial-admin-secret"

install_docker() {
	if ! docker version > /dev/null 2>&1; then
		echo "installing Docker..."
		for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done
		sudo apt-get update
		sudo apt-get install ca-certificates curl
		sudo install -m 0755 -d /etc/apt/keyrings
		sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
		sudo chmod a+r /etc/apt/keyrings/docker.asc

		echo \
		"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
		$(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
		sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
		sudo apt-get update
	else
		echo "Docker is already installed, skipping"
	fi
}

install_kubectl() {
	if ! kubectl version > /dev/null 2>&1; then
		echo "installing kubectl..."
		curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
		sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
		rm kubectl
	else
		echo "kubectl is already installed, skipping"
	fi

	echo "adding alias 'k' for kubectl to ~/.zshrc..."
	echo "alias k=kubectl" >> ~/.zshrc
}

install_k3d() {
	if ! k3d version > /dev/null 2>&1; then
		echo "installing k3d..."
		wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
	else
		echo "k3d is already installed, skipping"
	fi
}

init_cluster() {
	if ! k3d cluster get $k3d_cluster_name > /dev/null 2>&1; then
		echo "creating k3d cluster $k3d_cluster_name"
		k3d cluster create $k3d_cluster_name --port "8888:80@loadbalancer" --port "8443:443@loadbalancer" --k3s-arg '--disable=traefik@server:0'
	else
		echo "k3d cluster $k3d_cluster_name already exists, skipping"
	fi

	echo "adding packages..."
	kubectl apply -f deployment/packages.yaml

	echo "waiting for packages to be available..."
	sleep 20

	echo "adding will.local to /etc/hosts..."
	echo "127.0.0.1 will.local" | sudo tee -a /etc/hosts

	echo "adding namespaces '$argocd_namespace' and '$dev_namespace' to the cluster..."
	kubectl create namespace $argocd_namespace > /dev/null 2>&1 || echo "namespace '$argocd_namespace' already exists"
	kubectl create namespace $dev_namespace > /dev/null 2>&1 || echo "namespace '$dev_namespace' already exists"
}

install_argocd_cli() {
	if ! argocd help > /dev/null 2>&1; then
		echo "installing argocd cli..."
		argocd_version=$(curl -L -s https://raw.githubusercontent.com/argoproj/argo-cd/stable/VERSION)
		curl -sSL -o argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/download/v$argocd_version/argocd-linux-amd64
		sudo install -m 555 argocd-linux-amd64 /usr/local/bin/argocd
		rm argocd-linux-amd64
	else 
		echo "argocd cli already installed, skipping"
	fi
}

deploy_argocd() {
	echo "deploying ArgoCD to the cluster..."
	kubectl apply -n $argocd_namespace -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

	echo "waiting for ArgoCD server to be ready..."
	kubectl rollout status deployment $argocd_server -n $argocd_namespace

	echo "forwarding port 8080 to localhost..."
	kubectl port-forward svc/$argocd_server 8080:443 -n $argocd_namespace > /dev/null 2>&1 &

	echo "retrieving initial admin password..."
	argocd_admin_password=$(kubectl -n $argocd_namespace get secret $argocd_admin_secret -o jsonpath="{.data.password}" | base64 --decode)

	echo "logging in to ArgoCD..."
	argocd login localhost:8080 --username admin --password $argocd_admin_password --insecure

	echo "ArgoCD password: $argocd_admin_password"

	echo "ArgoCD is ready at https://localhost:8080"
}

deploy_will_app() {
	argocd app create will-service --file deployment/will.yaml --server localhost:8080
	argocd app sync will-service

	kubectl rollout status deployment will -n dev
}

install_docker
install_kubectl
install_k3d
init_cluster
install_argocd_cli
deploy_argocd
deploy_will_app