<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/431599f9-2279-4ff0-915f-6501611a0fe9" />



## AWS | Rancher 
Multi-Cluster Management: Centralizes the administration of multiple Kubernetes clusters (such as RKE2, K3s, EKS, AKS, and GKE) across on-premises, cloud, and edge environments.



🎯 Architecture Overview
```
Multi-cluster management – Manage multiple Kubernetes clusters from one dashboard.
Cluster provisioning – Create and configure Kubernetes clusters.
Cluster monitoring – Monitor cluster health and resources.
Access control (RBAC) – Manage users, teams, and permissions.
Application deployment – Deploy applications using Helm charts.
GitOps integration – Integrate with Fleet for continuous deployment.
Security and governance – Apply policies and manage cluster configurations.
```


🧱 Features
```
✔ Fully automated provisioning with Terraform
✔ High availability using multiple subnets in different Availability Zones
✔ Secure connectivity between Application and RDS
✔ Configurable environment variables for database credentials
✔ Easy to extend for other JSON data source
```



🚀 Deployment Options
```
terraform init
terraform validate
terraform plan -var-file="template.tfvars"
terraform apply -var-file="template.tfvars" -auto-approve
```

