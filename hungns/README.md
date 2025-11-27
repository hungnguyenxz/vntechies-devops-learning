## Assignment 1: Deploy WordPress Application to K8s
- Create k8s yaml file to run Wordpress Application. Please note that Wordpress require MySql as the database
- Use K8s pod, service, configmap, seccret for provisioning wordpress and MySql
- At the end, use port-forwarding to access the service


# WordPress + MySQL on Kubernetes (kubeadm)

### 1. Configure Environment
```bash
cp .env.example .env
vim .env  # Edit with your passwords
```

### 2. Deploy
```bash
# Create secrets
./scripts/create-secrets.sh
```

## Environment Variables

Required in `.env`:
- `MYSQL_ROOT_PASSWORD`
- `MYSQL_DATABASE`
- `MYSQL_USER`
- `MYSQL_PASSWORD`
