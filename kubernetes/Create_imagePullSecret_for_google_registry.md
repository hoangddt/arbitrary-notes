https://stackoverflow.com/questions/36283660/creating-image-pull-secret-for-google-container-registry-that-doesnt-expire

https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/


#### In short
- Create Service acount (GoogleContainer engine)
- Login via -u _json_key -p "$(cat ~/secret.json)"
- take the entry in `~/.docker/config.json`
- Base 64 it: cat `~/docker-config.json | base64`

Create secret:

```yaml
apiVersion: v1
data:
  .dockerconfigjson: <base64data>
kind: Secret
metadata:
  name: google-registry
type: kubernetes.io/dockerconfigjson
```

```
$ kubectl create -f <file>
```

Inspect:
```
$ kubectl get secret <name> --output=yaml
```

### Test pull secret

```
apiVersion: v1
kind: Pod
metadata:
  name: test-private-reg
spec:
  containers:
  - name: test-private-reg
    image: gcr.io/kubernetes-182603/busybox
  imagePullSecrets:
  - name: google-registry
```