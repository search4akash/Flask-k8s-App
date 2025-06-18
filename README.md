# 🌐 Flask App Deployment using Docker, Kubernetes & Terraform

This project demonstrates deploying a simple **Flask web app** using:

* **Python** for App Development
* **Docker** for Containerization
* **Kubernetes** (Minikube) for Container Orchestration
* **Terraform** for Infrastructure-as-Code Deployment

---

```
.
├── app
│   └── app.py                  #Simple Flask "Hello World" application
├── k8s
│   ├── deployment.yaml         # K8s Deployment (2 replicas)
│   └── service.yaml            # NodePort Service on port 30007
├── terraform
│   ├── main.tf                 # Terraform Manifest for Kubernetes Resources
├── Dockerfile                  # Docker Image Definition
├── requirements.txt            # Flask Dependencies
└── .gitignore                  # Ignores Terraform state, Lockfiles, etc.
```

---

### 🔹 Step 1: Install Required Tools

Install the following:

* [Docker](https://docs.docker.com/get-docker/)
* [Minikube](https://minikube.sigs.k8s.io/docs/start/)
* [Kubectl](https://kubernetes.io/docs/tasks/tools/)
* [Terraform](https://developer.hashicorp.com/terraform/install)

### 🔹 Step 2: Enable Docker Inside Minikube

```bash
eval $(minikube docker-env)
```

### 🔹 Step 3: Build the Flask App

👉 Flask App Code: [app/app.py](./app/app.py)
👉 Requirements File: [requirements.txt](./requirements.txt)

```bash
pip install -r requirements.txt
python app/app.py
```

> ✅ This step is only for testing the Flask app locally.

### 🔹 Step 4: Build Docker Image

👉 Dockerfile: [Dockerfile](./Dockerfile)
👉 Flask App: [app/app.py](./app/app.py)

```bash
docker build -t flask-k8s-app:v1 .
```

### 🔹 Step 5: Deploy to Kubernetes

👉 Deployment YAML: [k8s/deployment.yaml](./k8s/deployment.yaml)
👉 Service YAML: [k8s/service.yaml](./k8s/service.yaml)

```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

### 🔹 Step 6: Access the Flask App

```bash
minikube service flask-k8s-service --url
```

### 🔹 Step 7: Deploy via Terraform (Optional)

👉 Terraform Config: [terraform/main.tf](./terraform/main.tf)

```bash
cd terraform
terraform init
terraform apply
```

> ⚠️ Ensure Kubernetes provider is configured and Minikube is running.

---

### 📄 Deliverables Summary

| Step | Task           | Resource Link                                |
| ---- | -------------- | -------------------------------------------- |
| 1️⃣  | Flask App      | [app/app.py](./app/app.py)                   |
| 2️⃣  | Dockerfile     | [Dockerfile](./Dockerfile)                   |
| 3️⃣  | K8s Deployment | [k8s/deployment.yaml](./k8s/deployment.yaml) |
| 4️⃣  | K8s Service    | [k8s/service.yaml](./k8s/service.yaml)       |
| 5️⃣  | Terraform IaC  | [terraform/main.tf](./terraform/main.tf)     |

---

### 🧠 Learning Outcomes

✅ * Built and containerized a Flask app with Docker
✅ * Managed deployment with Kubernetes YAML files
✅ * Automated infrastructure using Terraform
* ✅ Understood Minikube and local orchestration environments

---

**Akash Majumdar**
* **Azure Cloud & DevOps Enthusiast**
* 📧 [search4akash@outlook.com](mailto:search4akash@outlook.com)
* 🔗 [LinkedIn](https://www.linkedin.com/in/akashmajumdar2003)
