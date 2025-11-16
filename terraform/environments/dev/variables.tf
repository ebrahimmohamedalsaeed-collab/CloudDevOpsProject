variable "env" {
  type        = string
  description = "Environment name (dev/prod)"
  default     = "dev"
}

variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

# Network variables
variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR block"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "List of public subnet CIDRs"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "List of private subnet CIDRs"
}

# EKS variables
variable "cluster_name" {
  type        = string
  description = "EKS cluster name"
}

variable "cluster_version" {
  type        = string
  description = "Kubernetes version"
  default     = "1.30"
}

variable "node_group_instance_types" {
  type        = list(string)
  description = "Instance types for node group"
  default     = ["t3.medium"]
}

variable "node_group_desired_capacity" {
  type        = number
  description = "Desired size for the managed node group"
  default     = 2
}

variable "node_group_min_size" {
  type        = number
  description = "Min size for the managed node group"
  default     = 1
}

variable "node_group_max_size" {
  type        = number
  description = "Max size for the managed node group"
  default     = 3
}

# Tags
variable "common_tags" {
  type        = map(string)
  description = "Common tags map"
  default     = {}
}

