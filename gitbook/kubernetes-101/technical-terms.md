# Understanding Kubernetes specific technical terms

The below are the very high level description and explanation of terminology used in this book in terms of Kubernetes.

> From [Kubernetes By Example](http://kubernetesbyexample.com) by the Red Hat OpenShift team

## Terms

### Pods

A pod is a collection of containers sharing a network and mount namespace and is the basic unit of deployment in Kubernetes. All containers in a pod are scheduled on the same node.

### Services

A service is a grouping of pods that are running on the cluster. A Kubernetes Service is an abstraction which defines a logical set of Pods and a policy by which to access them - sometimes called a micro-service. The set of Pods targeted by a Service is (usually) determined by a Label Selector (see below for why you might want a Service without a selector).

### Volumes

A Kubernetes volume is essentially a directory accessible to all containers running in a pod. First, when a container crashes, kubelet will restart it, but the files will be lost - the container starts with a clean state. Second, when running containers together in a Pod it is often necessary to share files between those containers. The Kubernetes Volume abstraction solves both of these problems.

### Namespaces

Namespaces provide for a scope of Kubernetes objects. You can think of it as a workspace you’re sharing with other users. Many objects such as pods and services are namespaced, while some (like nodes) are not. As a developer you’d usually simply use an assigned namespace, however admins may wish to manage them, for example to set up access control or resource quotas.

### Replication Controllers

A replication controller (RC) is a supervisor for long-running pods. An RC will launch a specified number of pods called replicas and makes sure that they keep running, for example when a node fails or something inside of a pod, that is, in one of its containers goes wrong.

### Deployments

A deployment is a supervisor for pods and replica sets, giving you fine-grained control over how and when a new pod version is rolled out as well as rolled back to a previous state.

### Labels

Labels are the mechanism you use to organize Kubernetes objects. A label is a key-value pair with certain restrictions concerning length and allowed values but without any pre-defined meaning. So you’re free to choose labels as you see fit, for example, to express environments such as ‘this pod is running in production’ or ownership, like ‘department X owns that pod’.

### Service Discovery

Service discovery is the process of figuring out how to connect to a service. While there is a service discovery option based on environment variables available, the DNS-based service discovery is preferable. Note that DNS is a cluster add-on so make sure your Kubernetes distribution provides for one or install it yourself.

### Health Checks

In order to verify if a container in a pod is healthy and ready to serve traffic, Kubernetes provides for a range of health checking mechanisms. Health checks, or probes as they are called in Kubernetes, are carried out by the kubelet to determine when to restart a container (for livenessProbe) and by services to determine if a pod should receive traffic or not (for readinessProbe).

### Environment Variables

You can set environment variables for containers running in a pod and in addition, Kubernetes exposes certain runtime infos via environment variables automatically.

### Secrets

You don’t want sensitive information such as a database password or an API key kept around in clear text. Secrets provide you with a mechanism to use such information in a safe and reliable way.

### Logging

Logging is one option to understand what is going on inside your applications and the cluster at large. Basic logging in Kubernetes makes the output a container produces available, which is a good use case for debugging. More advanced setups consider logs across nodes and store them in a central place, either within the cluster or via a dedicated (cloud-based) service.

### Jobs

A job is a supervisor for pods carrying out batch processes, that is, a process that runs for a certain time to completion, for example a calculation or a backup operation.

### Nodes

In Kubernetes, the nodes are the worker machines where your pods run.

### Replica Sets

ReplicaSet is the next-generation Replication Controller. The only difference between a ReplicaSet and a Replication Controller right now is the selector support. ReplicaSet supports the new set-based selector requirements as Replication Controller only supports equality-based selector requirements.

### Stateful Sets

StatefulSet is the workload API object used to manage stateful applications. Manages the deployment and scaling of a set of Pods, and provides guarantees about the ordering and uniqueness of these Pods.

### Daemon Sets

A DaemonSet ensures that all (or some) Nodes run a copy of a Pod. As nodes are added to the cluster, Pods are added to them. As nodes are removed from the cluster, those Pods are garbage collected. Deleting a DaemonSet will clean up the Pods it created.

## References

- The best way to learn is looking at documentation by [Kubernetes Docs](https://kubernetes.io/docs/concepts/)
- [Glossary for the documentation](../terminology-glossary.md)
