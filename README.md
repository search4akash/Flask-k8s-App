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

### 🔹 Step 1: Create the Flask App

```bash
mkdir -p app && cd app
nano app.py
```

**app.py:**

```python
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello from Flask in Kubernetes!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
```

### 🔹 Step 2: Add `requirements.txt`

```txt
flask
```

### 🔹 Step 3: Create the Dockerfile

```dockerfile
FROM python:3.9-slim
WORKDIR /app
COPY ./app /app
COPY requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
```

### 🔹 Step 4: Build Docker Image

```bash
# Enable Docker inside Minikube
eval $(minikube docker-env)

# Build the image
docker build -t flask-k8s-app:v1 .
```

---

<div align="center">
    <h2>☸️ Step 5: Create Kubernetes Deployment & Service YAML</h2>
</div>

Create a `k8s/` folder and add the following files:

**k8s/deployment.yaml**

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: flask-app
spec:
  replicas: 2
  selector:
    matchLabels:
      app: flask-k8s-app
  template:
    metadata:
      labels:
        app: flask-k8s-app
    spec:
      containers:
      - name: flask-container
        image: flask-k8s-app:v1
        ports:
        - containerPort: 5000
```

**k8s/service.yaml**

```yaml
apiVersion: v1
kind: Service
metadata:
  name: flask-k8s-service
spec:
  type: NodePort
  selector:
    app: flask-k8s-app
  ports:
    - protocol: TCP
      port: 5000
      targetPort: 5000
      nodePort: 30007
```

### 🔹 Step 6: Apply Kubernetes Manifests

```bash
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

💡 Access App:

```bash
minikube service flask-k8s-service --url
```

---

<div align="center">
    <h2>🧱 Step 7: Use Terraform for Declarative K8s Deployment</h2>
</div>

**terraform/main.tf**

```hcl
provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_manifest" "flask_app" {
  manifest = yamldecode(file("../k8s/deployment.yaml"))
}

resource "kubernetes_manifest" "flask_service" {
  manifest = yamldecode(file("../k8s/service.yaml"))
}
```

### 🔹 Step 8: Apply Terraform

```bash
cd terraform
terraform init
terraform apply
```

---

<div align="center">
    <h2>📊 Summary</h2>
</div>

| Step | Description          | File/Command                           |
| ---- | -------------------- | -------------------------------------- |
| 1️⃣  | Create Flask App     | `app/app.py`                           |
| 2️⃣  | Dockerize App        | `Dockerfile`, `docker build`           |
| 3️⃣  | Deploy to Kubernetes | `kubectl apply -f k8s/`                |
| 4️⃣  | Terraform IaC        | `terraform/main.tf`, `terraform apply` |

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
