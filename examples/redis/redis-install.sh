helm install redis -f redis-values.yaml -n infra --create-namespace ./redis
# NAME: redis
# LAST DEPLOYED: Thu Jul  6 17:53:40 2023
# NAMESPACE: infra
# STATUS: deployed
# REVISION: 1
# TEST SUITE: None
# NOTES:
# CHART NAME: redis
# CHART VERSION: 17.11.7
# APP VERSION: 7.0.11

# ** Please be patient while the chart is being deployed **

# Redis&reg; can be accessed on the following DNS names from within your cluster:

#     redis-master.infra.svc.cluster.local for read/write operations (port 6379)
#     redis-replicas.infra.svc.cluster.local for read-only operations (port 6379)



# To get your password run:

#     export REDIS_PASSWORD=$(kubectl get secret --namespace infra redis -o jsonpath="{.data.redis-password}" | base64 -d)

# To connect to your Redis&reg; server:

# 1. Run a Redis&reg; pod that you can use as a client:

#    kubectl run --namespace infra redis-client --restart='Never'  --env REDIS_PASSWORD=$REDIS_PASSWORD  --image cr-cn-shanghai.volces.com/fronted-infra/redis:7.0.11-debian-11-r20 --command -- sleep infinity

#    Use the following command to attach to the pod:

#    kubectl exec --tty -i redis-client \
#    --namespace infra -- bash

# 2. Connect using the Redis&reg; CLI:
#    REDISCLI_AUTH="$REDIS_PASSWORD" redis-cli -h redis-master
#    REDISCLI_AUTH="$REDIS_PASSWORD" redis-cli -h redis-replicas

# To connect to your database from outside the cluster execute the following commands:

#     kubectl port-forward --namespace infra svc/redis-master 6379:6379 &
#     REDISCLI_AUTH="$REDIS_PASSWORD" redis-cli -h 127.0.0.1 -p 6379