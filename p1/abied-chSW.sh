#!/bin/bash

export LANG=en_US
export LANGUAGE=en

MASTER_IP=$1

TOKEN=$(cat /vagrant/token)

curl -sfL https://get.k3s.io | K3S_URL=https://$MASTER_IP:6443 K3S_TOKEN=$TOKEN sh -

