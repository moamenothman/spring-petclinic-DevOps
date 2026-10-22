variable "aws_region" {
  description = "AWS region for the infrastructure"
  type        = string
  default     = "me-south-1"
}

variable "project_name" {
  description = "Project name used for resource naming and tags"
  type        = string
  default     = "spring-petclinic"
}

variable "vpc_cidr" {
  description = "CIDR range for the project VPC"
  type        = string
  default     = "10.20.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR range for the public subnet"
  type        = string
  default     = "10.20.1.0/24"
}
