variable "region" { default = "ap-south-1" }
variable "project" { default = "streamline" }
variable "vpc_cidr" { default = "10.0.0.0/16" }
variable "public_subnets" { default = ["10.0.1.0/24", "10.0.2.0/24"] }
variable "private_subnets" { default = ["10.0.3.0/24", "10.0.4.0/24"] }
variable "azs" { default = ["ap-south-1a", "ap-south-1b"] }

variable "my_ip_cidr" { description = "Your public IP /32"; type = string }
variable "db_username" { default = "streamuser" }
variable "db_password" { description = "DB password"; type = string; sensitive = true }
variable "key_pair_name" { default = "streamline-key" }
