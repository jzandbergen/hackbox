# Run a disposable kubernetes shell
```
kubectl run hackbox --rm -i --tty --image ghcr.io/jzandbergen/hackbox:latest -- bash
```

# Create a single pod
Use the yaml file as template for modifications.
```
kubectl create -f deployments/pod.yaml
```

# Create a daemonset
```
kubectl create -f deployments/daemonset.yaml
```

# Run in Docker
```
docker run --rm -ti ghcr.io/jzandbergen/hackbox:latest
```
