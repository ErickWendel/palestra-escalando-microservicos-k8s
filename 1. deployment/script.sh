kubectl create -f 1. mongodb.json
kubectl get pod --output wide
kubectl create -f 2. api.json

kubectl expose deployment api-heroes --port 4000 --type LoadBalancer
