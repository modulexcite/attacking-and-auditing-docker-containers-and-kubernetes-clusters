# Attacking Helm tiller without RBAC setup - Scenario

Bob has managed to gain access to a pod inside a K8S cluster. Bob knows that the default Kubernetes cluster deployments have very poor Role Based Access Control mechanisms.

Bob knows that he should be able to get the Kubernetes cluster admin access by using Helm and the Tiller service.

Let's help Bob get the cluster admin access out of this cluster!

## Tips

* You can run the below command to get shell with enough tools to get cluster admin access

```bash
kubectl run -n default --quiet --rm --restart=Never -ti --image=madhuakula/helm-security incluster
```