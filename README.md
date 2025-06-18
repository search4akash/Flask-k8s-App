# 🌐 Flask App Deployment using Docker, Kubernetes & Terraform

<div align="center">
    <h2>🚀 Project Overview</h2>
</div>

This project demonstrates deploying a simple **Flask web app** using:

✅ **Docker** for containerization
✅ **Kubernetes (Minikube)** for orchestration
✅ **Terraform** for infrastructure-as-code (IaC) deployment

---

<div align="center">
    <h2>📁 Project Structure</h2>
</div>

```
.
├── app
│   └── app.py                  # Flask "Hello World" application
├── k8s
│   ├── deployment.yaml         # K8s Deployment (2 replicas)
│   └── service.yaml            # NodePort service on port 30007
├── terraform
│   ├── main.tf                 # Terraform manifest for Kubernetes resources
├── Dockerfile                  # Docker image definition
├── requirements.txt            # Flask dependency
└── .gitignore                  # Ignores Terraform state, lockfiles, etc.
```

---

<div align="center">
    <h2>🛠️ Step-by-Step Setup Guide</h2>
</div>

### 🔹 Step 1: Install Required Tools

* Docker
* Minikube
* Kubectl
* Terraform

### 🔹 Step 2: Enable Docker Inside Minikube

```bash
eval $(minikube docker-env)
```

### 🔹 Step 3: Build Docker Image

```bash
docker build -t flask-k8s-app:v1 .
```

### 🔹 Step 4: Deploy to Kubernetes

* Kubernetes YAML files are in [`k8s/`](./k8s/)

```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

### 🔹 Step 5: Access the Flask App

```bash
minikube service flask-k8s-service --url
```

### 🔹 Step 6: Deploy via Terraform (Optional)

* Terraform configuration is in [`terraform/main.tf`](./terraform/main.tf)

```bash
cd terraform
terraform init
terraform apply
```

Ensure Kubernetes provider is configured and Minikube is running.

---

<div align="center">
    <h2>📊 Summary</h2>
</div>

| Step | Description        | Location                                   |
| ---- | ------------------ | ------------------------------------------ |
| 1️⃣  | Docker Image Build | [`Dockerfile`](./Dockerfile)               |
| 2️⃣  | App Code           | [`app/app.py`](./app/app.py)               |
| 3️⃣  | Kubernetes YAML    | [`k8s/`](./k8s/)                           |
| 4️⃣  | Terraform Config   | [`terraform/main.tf`](./terraform/main.tf) |

---

<div align="center">
    <h2>🎯 Learning Outcomes</h2>
</div>

✅ Docker image creation and tagging
✅ Kubernetes deployments using YAML
✅ Infrastructure-as-Code using Terraform
✅ Local cloud simulation using Minikube

---

<div align="center">
    <h2>📬 Contact</h2>
</div>

**Akash Majumdar**
Cloud & DevOps Enthusiast
📧 [search4akash@outlook.com](mailto:search4akash@outlook.com)
🔗 [LinkedIn](https://www.linkedin.com/in/akashmajumdar2003)
