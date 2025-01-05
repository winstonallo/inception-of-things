#!/bin/bash

export LANG=en_US
export LANGUAGE=en

# Install K3s
curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" INSTALL_K3S_EXEC="--flannel-iface eth1" K3S_NODE_IP=192.168.56.110 sh -

mkdir -p /home/vagrant/.kube
cp /etc/rancher/k3s/k3s.yaml /home/vagrant/.kube/config
chown -R vagrant:vagrant /home/vagrant/.kube/config
chmod 770 /etc/rancher/k3s

TOKEN=$(cat /var/lib/rancher/k3s/server/node-token)

echo $TOKEN > /vagrant/token

