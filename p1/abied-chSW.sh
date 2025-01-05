#!/bin/bash

export LANG=en_US
export LANGUAGE=en

MASTER_IP=$1

TOKEN=$(cat /vagrant/token)

curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" INSTALL_K3S_EXEC="--flannel-iface eth1" K3S_URL=https://$MASTER_IP:6443 K3S_TOKEN=$TOKEN sh -

