# Testing for the sensitive configurations and secrets in Kubernetes cluster - Scenario

Bob's company has deployed their code base to production Kubernetes cluster. Alas, this application has secrets which gives access to their AWS Cloud and other API endpoints! Most of which arise from default configurations, misconfigurations and bad programming practices. There has been speculation that the team directly deploys code from version control system to production!

In any case, as an attacker you know that the application is deployed in Kubernetes, which contains secrets to access the different cloud provider, API endpoints. Who knows what all secrets you may find!

## Tips

* Execute below command to start a shell into the pod to get started

```bash
export CODEBASE_POD_NAME=$(kubectl get pods --selector app=code-base -o jsonpath="{.items[0].metadata.name}")
kubectl exec -it $CODEBASE_POD_NAME sh
```