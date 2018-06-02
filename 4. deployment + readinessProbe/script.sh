kubectl expose --name mongosvc -f 1.\ mongodb.json
kubectl describe svc mongosvc
kubectl scale deployment/mongodb --replicas 4
kubectl describe svc mongosvc

HOST=$(kubectl get svc | grep api-heroes | awk '{print $4}')
siege -c10 -t60S  http://$HOST:4000/heroes