

# kubectl scale deployment api-heroes --replicas 10 --record
kubectl apply -f api.json --record
kubectl get deploy api-heroes
kubectl rollout history deployment api-heroes
kubectl rollout status deployment api-heroes
kubectl rollout undo deployment api-heroes --to-revision=1 
# kubectl set image deployment api-heroes api-heroes=erickwendel/nodejs-with-mongodb-example:v2 --record

siege -c10 -t60S  http://23.100.22.134:4000/heroes