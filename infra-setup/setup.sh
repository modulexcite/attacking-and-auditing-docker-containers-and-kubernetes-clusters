#!/bin/bash

export STUDENTCLUSTERNAME='k8s-training-cluster'
export STUDENTREGION='us-central1'
export STUDENTCLUSTER_MIN_NODES='2'
export STUDENTCLUSTER_MAX_NODES='3'
export STUDENTCLUSTER_VERSION='1.14.10-gke.27'

if [ -z "$STUDENTPROJECTNAME" ]; then
  export STUDENTPROJECTNAME='<Add-Project-Name>'
fi

## Set working directory
cd `dirname $0`

## Cluster creation

gcloud beta container --project "$STUDENTPROJECTNAME" clusters create "$STUDENTCLUSTERNAME" --zone "$STUDENTREGION-a" --no-enable-basic-auth --cluster-version $STUDENTCLUSTER_VERSION --machine-type "g1-small" --image-type "UBUNTU" --disk-type "pd-standard" --disk-size "50" --metadata flag=59a4c760306d682ca75d690bebb9db0e,disable-legacy-endpoints=true --scopes "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append" --preemptible --num-nodes "2" --enable-stackdriver-kubernetes --no-enable-ip-alias --network "projects/$STUDENTPROJECTNAME/global/networks/default" --subnetwork "projects/$STUDENTPROJECTNAME/regions/$STUDENTREGION/subnetworks/default" --enable-autoscaling --min-nodes $STUDENTCLUSTER_MIN_NODES --max-nodes $STUDENTCLUSTER_MAX_NODES --addons HorizontalPodAutoscaling,HttpLoadBalancing --no-enable-autoupgrade --no-enable-autorepair --maintenance-window "18:30"

gcloud compute addresses create $STUDENTCLUSTERNAME-sip --region $STUDENTREGION --project $STUDENTPROJECTNAME
export STUDENTCLUSTERSIP=$(gcloud compute addresses list --project=$STUDENTPROJECTNAME --filter "name=$STUDENTCLUSTERNAME-sip" | grep $STUDENTCLUSTERNAME-sip | awk '{print $2}')

gcloud container clusters get-credentials $STUDENTCLUSTERNAME --zone $STUDENTREGION-a --project $STUDENTPROJECTNAME

## Cluster setup

kubectl apply -f helm-rbac/helm-rbac.yaml
helm2 init --service-account tiller

### Wait for tiller pod to be ready
sleep 30

helm2 install --namespace kube-system --name nginx-ingress stable/nginx-ingress --set controller.service.externalTrafficPolicy=Local,controller.service.loadBalancerIP=$STUDENTCLUSTERSIP

helm2 install --name Helm-Charts/mailbox-service/
helm2 install --name connectivity-check Helm-Charts/connectivity-check/
helm2 install --name server-health Helm-Charts/server-health/

kubectl apply -f code-base/code-base.yaml
kubectl apply -f net-tools/net-tools.yaml
kubectl apply -f secrets-db-service/secrets-db-service.yaml

kubectl apply -f apps-ingress/apps-ingress.yaml

## Generate kubeconfig
export STUDENTCONFIGSERVER=$(kubectl cluster-info | grep master | awk '{print $NF}' | sed 's/\x1B\[[0-9;]\+[A-Za-z]//g')
export STUDENTTOKENNAME=$(kubectl -n kube-system get secret | grep tiller-token | awk '{print $1}')
export STUDENTCONFIGTOKEN=$(kubectl -n kube-system get secret $STUDENTTOKENNAME -o "jsonpath={.data.token}" | base64 -d)
export STUDENTCONFIGCRT=$(kubectl -n kube-system get secret $STUDENTTOKENNAME -o "jsonpath={.data['ca\.crt']}")
cat <<EOF > k8s-training-kubeconfig
apiVersion: v1
kind: Config
users:
- name: default
  user:
    token: $STUDENTCONFIGTOKEN
clusters:
- cluster:
    certificate-authority-data: $STUDENTCONFIGCRT
    server: $STUDENTCONFIGSERVER
  name: $STUDENTCLUSTERNAME
contexts:
- context:
    cluster: $STUDENTCLUSTERNAME
    user: default
  name: training
current-context: training
EOF

## Generate destroy script
cat > destroy.sh<<_EOF
#!/bin/bash

gcloud beta container --project "$STUDENTPROJECTNAME" clusters delete "$STUDENTCLUSTERNAME" --zone "$STUDENTREGION-a"
gcloud compute addresses delete $STUDENTCLUSTERNAME-sip --region $STUDENTREGION --project $STUDENTPROJECTNAME
_EOF
