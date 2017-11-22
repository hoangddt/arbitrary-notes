### What is Kubernetes

1. Where it came from
- Born in Google
- Donated to CNCF in 2014
- Written in Go/Golang
- DNA from Borg and Omega
- Kubernetes: Greek for `Helmsman` the person who steers a ship
- Often shortented to `k8s`

2. What and Why?

### Kubernetes Architecture

Master: control plane
Node: do the work

#### Master

##### kube-apiserver:

- Front-end to the control plane
- Expose the API (REST)
- Consumes JSON

##### Cluster store

- Persistent storage
- CLuster state and config
- Uses etcd
- Distributed, consistent, watchable...
- The "source of truth" for the cluster
- Have a backup plan for it

##### kube-controller-manager

- Controller of controllers
    - Node controller
    - Endpoints controller
- Watches for changes
- Helps maintain desired state

##### kube-scheduler

- Watches `apiserver` for new pods
- Assign work to `nodes`
    - affinity/anti-affinity
    - contraints
    - resources
    - ...

#### Nodes
The Kubernetes wokers (aka Minions)

##### kubelet

- The **main** Kubernetes agent
- Registers node with cluster
- Watches `apiserver`
- Instantiates **pods**
- Reports back to **master**
- Exposes endpoint on :10255

##### Container Engine

- Does container management
    - Pulling images
    - Starting/Stopping containers
    - ...
- Pluggable:
    - Usually **Docker**
    - Can be **rkt**

##### kube-proxy

Kubernetes networking
- Pod IP addresses
    - All containers in a pod share a single IP
- Load balances acreoss all pods in a **service**

### Kubernetes Services

Service Type:

```
$ kubectl expose rc hello-rc --name=hellp-svc --target-port=8080 --type=NodePort
$ kubectl expose deployment/kubernetes-bootcamp --type=NodePort --port 8080
```

``` yaml
apiVersion: v1
kind: Service
metadata:
    name: hello-svc
    labels:
        app: hello-world

```

### Replication Controller
