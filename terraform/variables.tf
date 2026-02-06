// ======== EDIT THESE VARIABLES ========
variable "project_name" { default = "streamline" }
variable "region" { default = "us-east-1" }
variable "vpc_cidr" { default = "10.0.0.0/16" }
variable "public_subnet_cidrs" { default = ["10.0.1.0/24", "10.0.2.0/24"] }
variable "private_subnet_cidrs" { default = ["10.0.3.0/24", "10.0.4.0/24"] }
variable "azs" { default = ["us-east-1a", "us-east-1b"] }
variable "key_name" { default = "streamline-key" }  // <-- your EC2 Key Pair name
variable "allowed_ssh_cidr" { default = "YOUR_PUBLIC_IP/32" } // e.g., "122.174.x.y/32"
variable "db_username" { default = "admin" }
variable "db_password" { default = "CHANGE_ME_STRONG_PASSWORD" } // Choose a strong password!
// ======================================
