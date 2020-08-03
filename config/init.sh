#!/bin/bash

REPO_ROOT=$(git rev-parse --show-toplevel)

need() {
    which "$1" &>/dev/null || die "Binary '$1' is missing but required"
}

need "kubectl"
need "helm"

install_Flux_and_GitHub(){
  echo "Installing Flux"
   # install flux
  helm repo add fluxcd https://charts.fluxcd.io

  "create flux namespace"
  kubectl apply -f "$REPO_ROOT"/deployments/flux/namespace.yaml

  helm upgrade --install flux --values "$REPO_ROOT"/deployments/flux/flux-values.yaml --namespace flux fluxcd/flux
  helm upgrade --install helm-operator --values "$REPO_ROOT"/deployments/helm-operator/flux-helm-operator-values.yaml --namespace flux fluxcd/helm-operator

  FLUX_READY=1
  while [ $FLUX_READY != 0 ]; do
    echo "waiting for flux pod to be fully ready..."
    kubectl -n flux wait --for condition=available deployment/flux
    FLUX_READY="$?"
    sleep 5
  done

  # grab output the key
  FLUX_KEY=$(kubectl -n flux logs deployment/flux | grep identity.pub | cut -d '"' -f2)

  #add keys to github
  "$REPO_ROOT"/config/github/add-repo-key.sh "$FLUX_KEY"

}

install_Flux_and_GitHub