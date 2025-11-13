## Starting the Redis Cluster

The recommended way to start the cluster is to use the provided `start.sh` script:

```bash
chmod +x start.sh
./start.sh
```

Alternatively, you can start the cluster manually with:

```bash
LOCALHOST_IP=192.168.1.16 docker compose up -d
```
