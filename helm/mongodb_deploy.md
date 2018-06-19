NOTES:


** Please be patient while the chart is being deployed **

MongoDB can be accessed via port 27017 on the following DNS name from within your cluster:

    mollified-alligator-mongodb.default.svc.cluster.local

To get the root password run:

    export MONGODB_ROOT_PASSWORD=$(kubectl get secret --namespace default mollified-alligator-mongodb -o jsonpath="{.data.mongodb-root-password}" | base64 --decode)

To connect to your database run the following command:

    kubectl run mollified-alligator-mongodb-client --rm --tty -i --image bitnami/mongodb --command -- mongo --host mollified-alligator-mongodb -p $MONGODB_ROOT_PASSWORD

To connect to your database from outside the cluster execute the following commands:

    export POD_NAME=$(kubectl get pods --namespace default -l "app=mongodb" -o jsonpath="{.items[0].metadata.name}")
    kubectl port-forward --namespace default $POD_NAME 27017:27017 &
    mongo --host 127.0.0.1 -p $MONGODB_ROOT_PASSWORD