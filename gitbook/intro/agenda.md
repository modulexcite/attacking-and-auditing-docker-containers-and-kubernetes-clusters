# Attacking & Auditing Docker Containers & Kubernetes Clusters - Agenda

* Introduction
    * About the trainer
    * Disclaimer
    * Agenda
* Environment Setup
    * Importing Virtual Machines
    * SSH into machines from your host
    * Common troubleshooting steps
* Docker Quick start
    * docker run
    * Dockerfile
    * docker management
* Docker Advanced Concepts
    * docker-compose wordpress
    * docker volumes and networks
    * docker swarm
    * Portainer
* Attacking Insecure Volume Mounts
    * Scenario
    * Solution
* Learning More about
    * Namespaces
    * Capabilities
    * Control Groups
* Attacking docker misconfiguration
    * Scenario
    * Solution
* Auditing Docker containers and images
    * Docker images and containers
    * Scenario
    * Solution
* Auditing Docker networks and volumes
    * Docker volumes and networks
    * Scenario
    * Solution
* Docker integrity checks
* amicontained - Introspection tool
* Attacking & Auditing Docker Runtime & Registries
    * Docker runtime endpoints
    * Docker registries
* Attacking container capabilities
    * Scenario
    * Solution
* Linux Security Module - Apparmor nginx profile
* Attacking swarm cluster secrets
    * Scenario
    * Solution
* Attacking private registry images
    * Scenario
    * Solution
* Docker bench security audit
* Container Security Monitoring
    * Docker logging
    * Docker Events
    * Sysdig Faclo
* Kubernetes Environment Setup
    * Import VM
    * Internet Check
    * Configure kubectl
* Kubernetes 101
    * Getting Started with Kubernetes
    * Introduction to Kubernetes
    * Kubernetes Overview
    * The Illustrated Children's Guide to Kubernetes
    * Understanding Kubernetes specific technical terms
    * kubectl usage for pentesters
* Deploying simple application in Kubernetes Cluster
    * Using yaml manifest
    * Using helm chart
* Scenario-1 - Exploiting Private Registry via Misconfiguration
    * Scenario
    * Solution
    * Discussion
* Scenario-2 - Attacking Kubernetes Cluster Metadata using SSRF vulnerability
    * Scenario
    * Solution
    * Discussion
* Scenario-3 - Testing for the sensitive configurations and secrets in Kubernetes cluster
    * Scenario
    * Solution
    * Discussion
* Scenario-4 - Docker escape using Pod Volume Mounts to access the nodes and host systems
    * Scenario
    * Solution
    * Discussion
* Scenario-5 - Attacking applications in different namespaces in Kubernetes cluster
    * Scenario
    * Solution
    * Discussion
* Scenario-6 - Attacking Helm tiller without RBAC setup
    * Scenario
    * Solution
    * Discussion
* Auditing Kubernetes Clusters with CIS Benchmarks using kube-bench
* Kubernetes resources security scoring using kubesec.io
* Kube-hunter to do analysis of the cluster for security concerns
* Kubeaudit to audit the cluster with detailed results
* Logging and Monitoring for security events
* Security checks for events using Sysdig Falco - Automated Defense (DEMO Only)
* Advanced Scenario - Exploiting Kubernetes API Server Vulnerability CVE-2018-1002105 (DEMO Only)
* Fun Learning About Kubernetes
    * Contained.af
    * Play with Docker
    * Katacoda Docker Security
    * Play with Kubernetes
* Popular Attacks
    * Dockerhub 190k accounts
    * Cryptojacking using public docker containers
    * Dockerhub known vulnerable images
    * BSidesSF CTF cluster pwn
    * Shopify metadata to cluster pwn
* References & Resources