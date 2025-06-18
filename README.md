# 🌐 Flask App Deployment using Docker, Kubernetes & Terraform

This project demonstrates deploying a simple **Flask web app** using:

✅ **Docker** for containerization
✅ **Kubernetes (Minikube)** for orchestration
✅ **Terraform** for infrastructure-as-code (IaC) deployment

---

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

### 🔹 Step 1: Install Required Tools

Install the following:

* [Docker](https://docs.docker.com/get-docker/)
* [Minikube](https://minikube.sigs.k8s.io/docs/start/)
* [Kubectl](https://kubernetes.io/docs/tasks/tools/)
* [Terraform](https://developer.hashicorp.com/terraform/install)

### 🔹 Step 2: Build the Flask App

👉 Flask App file: [app/app.py](https://chatgpt.com/c/app/app.py)
👉 Requirements: [requirements.txt](https://chatgpt.com/c/requirements.txt)

```
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python app/app.py  # To test locally

```

### 🔹 Step 3: Dockerize the App

👉 Dockerfile available: [Dockerfile](https://chatgpt.com/c/Dockerfile)

```
eval $(minikube docker-env)  # Connect Docker to Minikube
docker build -t flask-k8s-app:v1 .

```

### 🔹 Step 4: Orchestrate with Kubernetes

👉 Deployment YAML: [k8s/deployment.yaml](https://chatgpt.com/c/k8s/deployment.yaml)
👉 Service YAML: [k8s/service.yaml](https://chatgpt.com/c/k8s/service.yaml)

```
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
minikube service flask-k8s-service --url

```

### 🔹 Step 5: Automate with Terraform

👉 Terraform config: [terraform/main.tf](https://chatgpt.com/c/terraform/main.tf)

```
cd terraform
terraform init
terraform apply

```

> ⚠️ Ensure Minikube is running and the Kubernetes provider is set.

---

| Step Task Link |                |                                                                  |
| -------------- | -------------- | ---------------------------------------------------------------- |
| 1️⃣            | Flask App      | [app/app.py](https://chatgpt.com/c/app/app.py)                   |
| 2️⃣            | Dockerfile     | [Dockerfile](https://chatgpt.com/c/Dockerfile)                   |
| 3️⃣            | K8s Deployment | [k8s/deployment.yaml](https://chatgpt.com/c/k8s/deployment.yaml) |
| 4️⃣            | K8s Service    | [k8s/service.yaml](https://chatgpt.com/c/k8s/service.yaml)       |
| 5️⃣            | Terraform IaC  | [terraform/main.tf](https://chatgpt.com/c/terraform/main.tf)     |

---

✅ Docker image creation and tagging
✅ Kubernetes deployments using YAML
✅ Infrastructure-as-Code using Terraform
✅ Local cloud simulation using Minikube

---

**Akash Majumdar**
Cloud & DevOps Enthusiast
📧 [search4akash@outlook.com](mailto:search4akash@outlook.com)
🔗 [LinkedIn](https://www.linkedin.com/in/akashmajumdar2003)

---

