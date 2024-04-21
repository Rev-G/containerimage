# Azure DevOps agent container

## build

`docker build --tag "azp-agent:linux-arm64" --file "./dockerfile" .`

`docker image tag azp-agent:linux-arm64 gpalmerjr/azp-agent:linux-arm64`

`docker image tag azp-agent:linux-arm64 gpalmerjr/azp-agent:v1.0.0`

`docker image push --all-tags gpalmerjr/azp-agent`

`docker run -e AZP_URL="YOUR-URL" -e AZP_TOKEN="YOUR-TOKEN" -e AZP_POOL="YOUR-POOL" -e AZP_AGENT_NAME="Container Agent - Linux ARM64" --name "azp-agent-linuxarm64" azp-agent:linux-arm64`

```bash
export KUBECONFIG=~/.kube/kube1.config
kubectl get pods --all-namespaces
helm ls --all-namespaces
```

https://devopscube.com/create-helm-chart/
https://spacelift.io/blog/kubernetes-deployment-yaml
https://kubernetes.io/docs/tasks/inject-data-application/environment-variable-expose-pod-information/
https://kubernetes.io/docs/concepts/workloads/pods/downward-api/

```bash
kubectl create secret generic azdevops \
  --from-literal=AZP_TOKEN=YourPAT
```


```bash
helm create azdo-agent
helm lint .
helm install --dry-run my-agents azdo-agent
helm install my-agents azdo-agent
helm upgrade my-agent azdo-agent
```

get a shell in a container
https://kubernetes.io/docs/tasks/debug/debug-application/get-shell-running-container/

`kubectl exec --stdin --tty azdo-agent-deployment-56d659f498-r2j8s -- /bin/bash`
