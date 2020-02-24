# Run a disposable kubernetes shell
```
kubectl run hackbox --rm -i --tty --image goestin/hackbox -- bash
```

# Create a single pod
Use the yaml file as template for modifications.
```
kubectl create -f deployments/pod.yaml
```
