variable "env" {
  description = "Environment name (dev, qa, stage, prod)"
  type        = string
  default     = "dev"
}

variable "vpc_id" {
  description = "VPC ID for the environment"
  type        = string
}

variable "subnets" {
  description = "List of subnets"
  type        = list(string)
}

variable "security_groups" {
  description = "List of security groups"
  type        = list(string)
}

variable "desired_count" {
  description = "Desired number of ECS tasks"
  type        = number
}

variable "container_image_1" {
  description = "Docker image for service 1"
  type        = string
}

variable "container_image_2" {
  description = "Docker image for service 2"
  type        = string
}

variable "container_image_3" {
  description = "Docker image for service 3"
  type        = string
}

variable "container_port" {
  description = "Container port to expose"
  type        = number
  default     = 80
}
