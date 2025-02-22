#!/bin/sh

k3d cluster create p3
kubectl create namespace argocd
