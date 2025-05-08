AWS EC2 with Apache Behind Application Load Balancer — Terraform Setup
This project provisions a simple web hosting infrastructure on AWS using Terraform. It sets up:

A custom VPC with 2 public subnets

Two EC2 instances (Ubuntu) with Apache installed

An Application Load Balancer (ALB) routing traffic to both EC2s

Health checks and security groups

Unique content per instance (via Apache index.html)

🗂 Project Structure

.
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
├── user_data.sh
└── README.md

🚀 Prerequisites

AWS CLI configured with proper credentials

Terraform installed (v1.0 or later)

🛠 How It Works

Two EC2 instances are created in separate Availability Zones

A user_data.sh script installs Apache and creates a simple index.html on each instance

An Application Load Balancer (ALB) distributes HTTP traffic (port 80) across the two instances

Security groups ensure:

ALB is accessible from the internet

EC2s accept traffic only from the ALB

📦 Usage

Clone the repository

git clone https://github.com/shivam-th/simple-aws-web-hosting.git
cd aws-alb-apache-terraform

Update terraform.tfvars (optional)

By default it uses Ubuntu AMI for us-east-1. Update the AMI ID or region if needed.

Initialize Terraform

terraform init

Review the plan

terraform plan

Apply the configuration

terraform apply -auto-approve

Get the ALB DNS Name

terraform output alb_dns_name

Open the ALB DNS in your browser

You should see:
Hello from ip-xxx-xxx-xxx

🔄 Clean Up

To delete all resources:

terraform destroy -auto-approve

📝 Notes

Instances are spread across different AZs for high availability

Apache2 is installed automatically using cloud-init (user_data.sh)

You can modify user_data.sh to deploy your own app








