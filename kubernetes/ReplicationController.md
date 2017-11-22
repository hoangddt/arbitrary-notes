[Replication Controller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/)

If there are too many pods, the ReplicationController terminates the extra pods. If there are too few, the ReplicationController starts more pods. Unlike manually created pods, the pods maintained by a ReplicationController are automatically replaced if they fail, are deleted, or are terminated.  
ReplicationController is often abbreviated to “rc” or “rcs” in discussion, and as a shortcut in kubectl commands.

``` yaml
apiVersion: v1
kind: ReplicationController
metadata:
  name: nginx
spec:
  replicas: 3
  selector:
    app: nginx
  template:
    metadata:
      name: nginx
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx
        ports:
        - containerPort: 80
```

Run
``` sh
$ kubectl create -f ./replication.yaml
replicationcontroller "nginx" created
```

Check on status of the ReplicationController:

```
kubectl describe replicationcontrollers/nginx
```