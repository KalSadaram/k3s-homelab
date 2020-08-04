# Light-weight CI/CD k3s Implementation
k3s-homelab
Managing Home Infra with GitOps [MicroK8S, Helm releases with Flux Help Operator]

This repo is a mirror of ![k3s-homelab](https://github.com/kalsadaram/k3s-homelab)

Leverage [Flux](https://github.com/fluxcd/flux) to automate cluster state using code residing in this repo

## Setup

See [ansible/README.md](ansible/README.md) for more details.

## Workloads (by namespace)

* [cert-manager](cert-manager/)
* [default](default/)
* [flux](flux/)
* [kube-system](kube-system/)
* [logs](logs/)
* [monitoring](monitoring/)
* [rook-ceph](rook-ceph/)
* [system-upgrade](system-upgrade/)
* [velero](velero/)

