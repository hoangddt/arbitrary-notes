## Use ingress with minikube

### Enable ingress on minukube

```
$ minikube addons list
$ minikube addons enable ingress
```

```
$ minikube addons list
- addon-manager: enabled
- coredns: disabled
- dashboard: enabled
- default-storageclass: enabled
- efk: disabled
- freshpod: disabled
- heapster: disabled
- ingress: enabled
- kube-dns: enabled
- metrics-server: disabled
- registry: disabled
- registry-creds: disabled
- storage-provisioner: enabled
```

### Inspect the controller

```
$ kubectl get pods -n kube-system
```

Output should contain `nginx-ingress-controller` and `default-http-backend`:

```
nginx-ingress-controller-67956bf89d-f5lln
default-http-backend-59868b7dd6-68zwj
```

### Test out ingress

1. Create deployment

	[Ref from google cloud doc](https://cloud.google.com/kubernetes-engine/docs/tutorials/http-balancer)

	```
	$ kubectl run web --image=gcr.io/google-samples/hello-app:1.0 --port=8080
	$ kubectl expose deployment web --target-port=8080 --type=NodePort
	```

2. Create ingress
	```
	apiVersion: extensions/v1beta1
	kind: Ingress
	metadata:
	  name: basic-ingress
	spec:
	  backend:
		serviceName: web
		servicePort: 8080
	```

	```
	$ kubectl create -f basic-ingress.yaml
	```

	Access minikube IP and you will see something like this:
	```
	Hello, world!
	Version: 1.0.0
	Hostname: web-6498765b79-fq5q5
	```

3. Update ingress
	- Install more service

	```
	$ kubectl run web2 --image=gcr.io/google-samples/hello-app:2.0 --port=8080
	$ kubectl expose deployment web2 --target-port=8080 --type=NodePort
	```

	```
	$ helm install stable/wordpress
	```

	The ingress support NodePort service, make sure point to NodePort service of ingress

	```
	apiVersion: extensions/v1beta1
	kind: Ingress
	metadata:
	  name: fanout-ingress
	spec:
	  rules:
	  - http:
		  paths:
		  - path: /
			backend:
			  serviceName: web
			  servicePort: 8080
		  - path: /v2/
			backend:
			  serviceName: web2
			  servicePort: 8080
		  - path: /wordpress/
			backend:
			  serviceName: wordpress-nodeport
			  servicePort: 8080
	```

	Now access as the minikube IP:
	- Visit http://<IP_ADDRESS>/ and note that the response contains Version: 1.0.0 (as the request is routed to the web Service)
	- Visit http://<IP_ADDRESS>/v2/ and note that the response contains Version: 2.0.0 (as the request is routed to the web2 Service)
	- Visit http://<IP_ADDRESS>/wordpress/ and note that the response contains deployed wordpress content

### Inspect and debug

The IP to access is minikube ip.  
If using cloud provider it will be `nginx-ingress` service IP

To view nginx config, run the controller pod, inspect `/etc/nginx/nginx.conf`

	```
	$ kubectl exec -ti -n kube-system nginx-ingress-controller-67956bf89d-f5lln bash
	$ cat /etc/nginx/nginx.conf
	```