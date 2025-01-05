#!/bin/bash

export LANG=en_US
export LANGUAGE=en

# Install K3s
curl -sfL https://get.k3s.io | sh -

mkdir -p /home/vagrant/.kube
cp /etc/rancher/k3s/k3s.yaml /home/vagrant/.kube/config
chown -R vagrant:vagrant /home/vagrant/.kube/config 

TOKEN=$(cat /var/lib/rancher/k3s/server/node-token)

echo $TOKEN > /vagrant/token

