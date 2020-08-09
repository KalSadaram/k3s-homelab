
# Flux and Helm Configuration

## Install Flux

```bash
kubectl apply -f deployments/flux/namespace.yaml

helm repo add fluxcd https://charts.fluxcd.io
kubectl apply -f https://raw.githubusercontent.com/fluxcd/helm-operator/master/deploy/crds.yaml --kubeconfig /etc/rancher/k3s/k3s.yaml

helm upgrade --install flux --values deployments/flux/flux-values.yaml --namespace flux fluxcd/flux --kubeconfig /etc/rancher/k3s/k3s.yaml

helm upgrade --install flux --values deployments/flux/flux-values.yaml --namespace flux --kubeconfig /etc/rancher/k3s/k3s.yaml


helm upgrade --install flux --values deployments/flux/flux-values.yaml \
    --namespace flux \
    --set helm.versions=v3 \
    --kubeconfig /etc/rancher/k3s/k3s.yaml


    helm upgrade -i helm-operator fluxcd/helm-operator \
    --namespace flux \
    --set helm.versions=v3 \
    --kubeconfig /etc/rancher/k3s/k3s.yaml