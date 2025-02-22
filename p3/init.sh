#!/bin/bash

k3d cluster create abied-ch

argocd_namespace="argocd"
dev_namespace="dev"
argocd_server="argocd-server"
argocd_admin_secret="argocd-initial-admin-secret"

kubectl create namespace $argocd_namespace || echo "Namespace $argocd_namespace already exists"
kubectl create namespace $dev_namespace || echo "Namespace $dev_namespace already exists"

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

argocd app create will-service --file deploy.yaml --server localhost:8080
argocd app sync will-service

kubectl rollout status deployment will -n dev

kubectl port-forward svc/will-service 8888:8888 -n dev > /dev/null 2>&1 &

