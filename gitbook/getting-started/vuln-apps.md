# Vulnerable Apps

Each student cluster has intentionally vulnerable apps running which will be used during lab scenarios. The apps are available in following URLs

```
http://mailbox-service.oss-k8s-security.cloudsec.training
http://server-health.oss-k8s-security.cloudsec.training
http://connectivity-check.oss-k8s-security.cloudsec.training
```

**NOTE:** All attacks described in this document must be executed from Kubernetes Student VM.

The apps are accessible from Student VM after you setup port forward locally. Open a terminal in Student VM and execute the command below to setup a port forward into the cluster.

```
sudo kubectl port-forward -n kube-system svc/nginx-ingress-controller 80:80
```

Now you can navigate to the vulnerable applications by URL given above.