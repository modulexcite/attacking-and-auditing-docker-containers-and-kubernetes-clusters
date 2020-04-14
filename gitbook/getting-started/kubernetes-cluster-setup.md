# Kubernetes Cluster Setup

We will setup a Kubernetes cluster in Google Cloud. For this, you will require:

1. Google Cloud account
2. [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
3. [Helm 2](https://v2.helm.sh/docs/install/)
4. [gcloud](https://cloud.google.com/sdk/install)

* Ensure `gcloud` is configured and able to access your Google Cloud account. This can be verified using

```
gcloud projects lists
```

* Ensure you have `helm2` symlink pointing to the Helm v2.x binary. The setup script uses `helm2` to invoke Helm v2.

> **NOTE:** Setting up a cluster in Google cloud may incur cost. Refer to `setup.sh` on the resources created.

## Create Cluster

```
export STUDENTPROJECTNAME="Google-Cloud-Project-Name"
./setup.sh
```

> The cluster creation script `setup.sh` will generate a script `destroy.sh` that can be used to delete the resources created on Google cloud

The `setup.sh` will

1. Create a Kubernetes cluster on Google cloud using `gcloud`
2. Allocate a static IP address for Ingress
3. Deploy vulnerable apps and config
4. Generate `kubeconfig` file in current directory
5. Generate `destroy.sh` script to destroy [1] and [2]

## Expose Vulnerable Apps

```
sudo kubectl port-forward -n kube-system svc/nginx-ingress-controller 80:80
```

The default ingress `app-ingress/app-ingress.yml` uses host names that resolves to `127.0.0.1`. The above command will forward port 80 on localhost to the `Nginx Ingress` service running inside the cluster.

## Destroy Cluster

```
./destroy.sh
```