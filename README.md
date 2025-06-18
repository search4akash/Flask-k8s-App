# 🌟 Flask App Deployment with Docker, Kubernetes & Terraform

<div align="center">
    <h2>🔹 Project Overview</h2>
</div>

This project demonstrates a local DevOps infrastructure using **Docker**, **Kubernetes (Minikube)**, and **Terraform** to deploy a simple Flask web application. It showcases containerization, declarative infrastructure, and infrastructure-as-code in a beginner-friendly and real-world-ready setup.

---

<div align="center">
    <h2>📚 Table of Contents</h2>
</div>

* [Step 1: Build the Docker Image](#step-1-build-the-docker-image)
* [Step 2: Deploy Using Kubernetes YAML](#step-2-deploy-using-kubernetes-yaml)
* [Step 3: Deploy Using Terraform](#step-3-deploy-using-terraform)
* [📁 Project Structure](#project-structure)
* [📊 Summary](#summary)
* [🎯 Learning Outcomes](#learning-outcomes)
* [📞 Contact](#contact)

---

<div align="center">
    <h2>🔧 Step 1: Build the Docker Image</h2>
</div>

```bash
eval $(minikube docker-env)  # if using Minikube
docker build -t flask-k8s-app:v1 .
```

---

<div align="center">
    <h2>☸️ Step 2: Deploy Using Kubernetes YAML</h2>
</div>

```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

Visit the app locally:

```
http://localhost:30007
```

---

<div align="center">
    <h2>📦 Step 3: Deploy Using Terraform</h2>
</div>

```bash
cd terraform
terraform init
terraform apply
```

> ✅ Make sure Minikube is running and Terraform Kubernetes provider is set up properly.

---

<div align="center">
    <h2>📁 Project Structure</h2>
</div>

```
.
├── app
│   └── app.py                  # Flask Hello World App
├── k8s
│   ├── deployment.yaml         # K8s Deployment (2 replicas)
│   └── service.yaml            # NodePort Service on port 30007
├── terraform
│   ├── main.tf                 # Terraform manifest for K8s resources
│   └── terraform.tfstate       # Terraform state file (gitignored)
├── Dockerfile                  # Flask App Dockerfile
├── requirements.txt            # Flask dependency
└── .gitignore                  # Ignores Terraform state, lockfiles, etc.
```

---

<div align="center">
    <h2>📊 Summary</h2>
</div>

| Step | Task                  | Files                                            |
| ---- | --------------------- | ------------------------------------------------ |
| 1️⃣  | Build Docker Image    | Dockerfile                                       |
| 2️⃣  | Deploy with kubectl   | deployment.yaml / service.yaml                   |
| 3️⃣  | Deploy with Terraform | main.tf                                          |
| ✅    | Visit App             | [http://localhost:30007](http://localhost:30007) |

---

<div align="center">
    <h2>🎯 Learning Outcomes</h2>
</div>

✅ Containerization using **Docker**
✅ Orchestration with **Kubernetes (Minikube)**
✅ Infrastructure automation using **Terraform**
✅ Writing clean, reusable **YAML** and **Terraform code**
✅ Understanding the **DevOps workflow** locally

---

<div align="center">
    <h2>📞 Contact</h2>
</div>

**Akash Majumdar**
Cloud & DevOps Enthusiast ☁️
📧 [search4akash@outlook.com](mailto:search4akash@outlook.com)
🔗 [LinkedIn](https://www.linkedin.com/in/akashmajumdar2003/)

---
