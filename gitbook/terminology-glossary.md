# Kubernetes Glossary

### Annotation
A key-value pair that is used to attach arbitrary non-identifying metadata to objects


### Cluster
A set of machines, called nodes, that run containerized applications managed by Kubernetes

## Container
A lightweight and portable executable image that contains software and all of its dependencies

### Container Environment Variables
Container environment variables are name=value pairs that provide useful information into containers running in a Pod

## Controller
A control loop that watches the shared state of the cluster through the apiserver and makes changes attempting to move the current state towards the desired state

## CustomResourceDefinition
Custom code that defines a resource to add to your Kubernetes API server without building a complete custom server

## DaemonSet
Ensures a copy of a Pod is running across a set of nodes in a cluster 

## Deployment
An API object that manages a replicated application

## Extensions
Extensions are software components that extend and deeply integrate with Kubernetes to support new types of hardware

## Image
Stored instance of a container that holds a set of software needed to run an application

## Init Container
One or more initialization containers that must run to completion before any app containers run

## Job
A finite or batch task that runs to completion

## Kubectl
A command line tool for communicating with a Kubernetes API server

## Kubelet
An agent that runs on each node in the cluster. It makes sure that containers are running in a pod

## Kubernetes API
The application that serves Kubernetes functionality through a RESTful interface and stores the state of the cluster

## Label
Tags objects with identifying attributes that are meaningful and relevant to users

## Minikube
A tool for running Kubernetes locally

## Name
A client-provided string that refers to an object in a resource URL, such as /api/v1/pods/some-name

## Namespace
An abstraction used by Kubernetes to support multiple virtual clusters on the same physical cluster 

## Node
A node is a worker machine in Kubernetes

## Pod
The smallest and simplest Kubernetes object. A Pod represents a set of running containers on your cluster

## Pod Security Policy
Enables fine-grained authorization of Pod Priority creation and updates

## RBAC (Role-Based Access Control)
Manages authorization decisions, allowing admins to dynamically configure access policies through the Kubernetes API 

## ReplicaSet
ReplicaSet is the next-generation Replication Controller

## Resource Quotas
Provides constraints that limit aggregate resource consumption per Namespace 

## Selector
Allows users to filter a list of resources based on labels

## Service
An API object that describes how to access applications, such as a set of Pods , and can describe ports and load-balancers

## Service Account
Provides an identity for processes that run in a Pod 

## StatefulSet
Manages the deployment and scaling of a set of Pods , and provides guarantees about the ordering and uniqueness of these Pods

## Taint
A key-value pair and an effect to prevent the scheduling of pods on nodes or node groups

## Toleration
A key-value pair and an effect to enable the scheduling of pods on nodes or node groups that have a matching taints 

## UID
A Kubernetes systems-generated string to uniquely identify objects

## Volume
A directory containing data, accessible to the containers in a pod 

## docker
Docker is a software technology providing operating-system-level virtualization also known as containers

## kube-apiserver
Component on the master that exposes the Kubernetes API. It is the front-end for the Kubernetes control plane

## kube-controller-manager
Component on the master that runs controllers 

## kube-proxy
kube-proxy is a network proxy that runs on each node in the cluster


## References

* [https://kubernetes.io/docs/reference/glossary/?fundamental=true](https://kubernetes.io/docs/reference/glossary/?fundamental=true)