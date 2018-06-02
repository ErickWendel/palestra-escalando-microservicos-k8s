kubectl expose --name mongosvc -f 1.\ mongodb.json
kubectl describe svc mongosvc
kubectl scale deployment/mongodb --replicas 4
kubectl describe svc mongosvc