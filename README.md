# hackbox

A disposable container with network debugging tools for use in Kubernetes or Docker.

## Quickstart — disposable shell

```
kubectl run hackbox --rm -it --image ghcr.io/jzandbergen/hackbox:latest -- bash
```

## Attach to an existing hackbox pod

```
kubectl attach hackbox -it
```

## Run on a specific node

```
kubectl run hackbox --rm -it \
  --image ghcr.io/jzandbergen/hackbox:latest \
  --overrides='{"spec":{"nodeName":"<node-name>"}}' \
  -- bash
```

## Create a single pod

Use the yaml file as a template for modifications.

```
kubectl create -f deployments/pod.yaml
kubectl attach hackbox -it
```

## Create a daemonset

```
kubectl create -f deployments/daemonset.yaml
```

## Run in Docker

```
docker run --rm -it ghcr.io/jzandbergen/hackbox:latest
```
