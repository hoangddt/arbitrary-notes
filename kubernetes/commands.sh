## PODs
kubectl get pods --all-namespaces
kubectl get pods -o wide --all-namespaces
kubectl get pods --selector=app=nginx --output=jsonpath={.items..metadata.name}

kubectl logs kubernetes-dashboard-3717423461-gxrwv --namespace=kube-system


# Imperative commands
kubectl run nginx --image nginx
# same thing with different syntax
kubectl create deployment nginx --image nginx

## Imperative object configuration
# Create the objects defined in a configuration file:
kubectl create -f nginx.yaml
# Delete the objects defined in two configuration files:
kubectl delete -f nginx.yaml -f redis.yaml
# Update the objects defined in a configuration file by overwriting the live configuration:
kubectl replace -f nginx.yaml

# edit live object
kubectl edit rc nginx
# delete object
# kubectl delete <type>/<name>
kubectl delete deployment/nginx
# get current config
kubectl get deployments/kubernetes-bootcamp -o yaml
# add label
kubectl label pod $POD_NAME app=v1
# delete service 
kubectl delete service -l run=kubernetes-bootcamp
# scale
kubectl scale deployments/kubernetes-bootcamp --replicas=4
# service 
kubectl expose deployment/kubernetes-bootcamp --type="NodePort" --port 8080