# Variables Configuration

variable "cluster-name" {
  default     = "eks-cluster"
  type        = string
  description = "The name of your EKS Cluster"
}

variable "aws-region" {
  default     = "us-east-1"
  type        = string
  description = "The AWS Region to deploy EKS"
}

variable "availability-zones" {
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
  type        = list
  description = "The AWS AZ to deploy EKS"
}

variable "k8s-version" {
  default     = "1.19"
  type        = string
  description = "Required K8s version"
}

variable "kublet-extra-args" {
  default     = ""
  type        = string
  description = "Additional arguments to supply to the node kubelet process"
}

variable "public-kublet-extra-args" {
  default     = ""
  type        = string
  description = "Additional arguments to supply to the public node kubelet process"

}

variable "vpc-subnet-cidr" {
  default     = "10.0.0.0/16"
  type        = string
  description = "The VPC Subnet CIDR"
}

variable "private-subnet-cidr" {
  default     = ["10.0.0.0/19", "10.0.32.0/19", "10.0.64.0/19"]
  type        = list
  description = "Private Subnet CIDR"
}

variable "public-subnet-cidr" {
  default     = ["10.0.128.0/20", "10.0.144.0/20", "10.0.160.0/20"]
  type        = list
  description = "Public Subnet CIDR"
}

variable "db-subnet-cidr" {
  default     = ["10.0.192.0/21", "10.0.200.0/21", "10.0.208.0/21"]
  type        = list
  description = "DB/Spare Subnet CIDR"
}

variable "eks-cw-logging" {
  default     = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
  type        = list
  description = "Enable EKS CWL for EKS components"
}

variable "node-instance-type" {
  default     = "m4.large"
  type        = string
  description = "Worker Node EC2 instance type"
}

variable "root-block-size" {
  default     = "20"
  type        = string
  description = "Size of the root EBS block device"

}

variable "desired-capacity" {
  default     = 2
  type        = string
  description = "Autoscaling Desired node capacity"
}

variable "max-size" {
  default     = 5
  type        = string
  description = "Autoscaling maximum node capacity"
}

variable "min-size" {
  default     = 1
  type        = string
  description = "Autoscaling Minimum node capacity"
}

variable "public-min-size" {
  default     = 1
  type        = string
  description = "Public Node groups min ASG capacity"
}

variable "public-max-size" {
  default     = 1
  type        = string
  description = "Public Node groups max ASG capacity"
}

variable "public-desired-capacity" {
  default     = 1
  type        = string
  description = "Public Node groups desired ASG capacity"
}

variable "ec2-key-public-key" {
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDUa7WAuofuEAk8mru16lsXyAXEXzcYSD3clX/v3Cxo8b4ZhoB4hy50CMoGIYXKyvufPwRLjU4S99D+Wnkd+8kXSTmrFQzVj+NkKHv7ZqyeJ7KoI+oPduQy/iBAgxy6UOiBj8SVcJMeSr3Ufzf1xlLglg0CXYki/vCB3BvHP/dNWlX2mdKwU8z9s7PTF/fwESVklNnO+8DAGhRY8CpX2eR2S00Gv2JvXp0D4S78ZgpyS+zPOY9iOTInj6TsIOdNij66PYbX856YYMbBKfOYCu2Chlfn+wiTdXA3H0y0kRMiwgiO5wHyBaAAzl+mZ8EM4tde6AeKDt3PVReNqgZDFoC00NcjCV4eUue+3e8qgAXotRMwz/HAfOLQcoRzr61G7oJfj98wxwdvdYd2UPoaG+8us4jhcqHaNB4i4iL+zo5aeQDV3O0SyloPZN5VNmqq7sjhc5xjap39D8GHzTclBvJiN6bcehJjcL03f4jK/S+hKDH5ADOgH+E8efkCMp9n2ac= root@4c9c0fc7211b"
  type        = string
  description = "AWS EC2 public key data"
}
