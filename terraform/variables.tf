// ===== INLINE VARIABLES (edit easily) =====
variable "aws_region"           { type = string  default = "ap-south-1" }
variable "project_name"         { type = string  default = "streamline" }
variable "vpc_cidr"             { type = string  default = "10.0.0.0/16" }
variable "public_subnet_cidrs"  { type = list(string) default = ["10.0.1.0/24","10.0.2.0/24"] }
variable "private_subnet_cidrs" { type = list(string) default = ["10.0.3.0/24","10.0.4.0/24"] }
variable "azs"                  { type = list(string) default = ["ap-south-1a","ap-south-1b"] }

variable "key_name"   { type = string  default = "25-hp-mumbai" } // CHANGE_ME
variable "my_ip_cidr" { type = string  default = "52.66.249.129" }    // CHANGE_ME

variable "instance_type"     { type = string default = "t3.micro" }
variable "alb_health_path"   { type = string default = "/" }

variable "db_username"       { type = string default = "stream_user" }
variable "db_password"       { type = string default = "Admin1234" } // CHANGE_ME
variable "db_name"           { type = string default = "streamlinedb" }
variable "db_engine_version" { type = string default = "8.0.35" }
// ==========================================
