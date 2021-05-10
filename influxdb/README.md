1. install influxdb

```
helm install influxdb -f ./influxdb-values.yaml bitnami/influxdb
```

2. attach to container:

```
kubectl exec -it influxdb-767f8f78d4-7l2s4 influx
```

3. create database `metrics`:

```
CREATE DATABASE metrics
```

4. add influxdb datasource to grafana:

```
http://influxdb:8086

database: metrics
```

5. import grafana dashboard
