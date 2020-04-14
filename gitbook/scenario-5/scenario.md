# Attacking applications in different namespaces in Kubernetes cluster - Scenario

Bob's friend in IT, Kevin manages the Kubernetes cluster for his company along with his teammate James. It's a little sad, but Kevin and James do not share their work with each other.

It turns out James has setup a MySQL server on the same Kubernetes cluster but on a different namespace. But given that they are both on the same Kubernetes cluster, they appear to be on the same network! Well that is because, most Kubernetes clusters are setup without network segregation between namespaces.

Can you help Kevin gain access to James' MySQL server to see what shady secrets he has been hiding?

## Tips

By default, Kubernetes does not restrict traffic between pods running inside the cluster. This means any pod can connect to any other pod as there are no firewalls controlling the intra-cluster traffic.

* Executing below commands to into the pod to get started

```bash
export NET_TOOLS_POD=$(kubectl get pods --selector app=net-tools -o jsonpath="{.items[0].metadata.name}")
kubectl exec -it $NET_TOOLS_POD bash
```