https://kubernetes.io/docs/concepts/services-networking/connect-applications-service/

#### What detail on service

```
$ kubectl describe svc my-nginx
```

You should now be able to curl the nginx Service on <CLUSTER-IP>:<PORT> from any node in your cluster. Note that the Service IP is completely virtual, it never hits the wire,

#### Watch which endpoint this service point to

```
$ kubectl get ep <service name>
```

#### Inspect environment variables in a pods

```
$ kubectl exec my-nginx-3800858182-jr4a2 -- printenv
```

#### Recreate the pods

The scheduler might put both pods on the same machine, which will take your entire Service down if it dies. We can do this the right way by killing the 2 pods and waiting for the Deployment to recreate them

```
$ kubectl scale deployment my-nginx --replicas=0; kubectl scale deployment my-nginx --replicas=2;
```