
```
$ helm create mychart
$ helm install ./mychart
$ helm get manifest <name> # get k8s file
$ helm delete <name>

```

```
$ helm install --debug --dry-run ./mychart
```

```
# set a value to override
$ helm install --dry-run --debug --set favoriteDrink=slurm ./mychart
```

Pull dependencies in charts
```
$ helm dep build
```

```
$ minikube service name --url
```

Get mariadb-root-password
```
$ # user root/pass:
$ kubectl get secret --namespace default opinionated-eel-wordpress -o jsonpath="{.data.mariadb-root-password}" | base64 --decode
```

```
$ user: bn_wordpress
$ kubectl get secret --namespace default opinionated-eel-mariadb -o jsonpath="{.data.mariadb-password}" | base64 --decode
```

Wordpress password
```
$ kubectl get secret --namespace default opinionated-eel-wordpress -o jsonpath="{.data.wordpress-password}" | base64 --decode
```