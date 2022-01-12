variable "image_name" {
  description = "image name assigned to the container"
}

variable "container_name" {
  description = "Name assigned to the containers"
}

variable "prefix" {
  description = "Assigned name to AWS resources"
}

variable "private_subnet_ids" {
  description = "private subnet ids used on fargate module"
}

variable "public_subnet_ids" {
  description = "public subnet ids used on fargate module"
}

variable "vpc_id" {
  description = "vpc id used in fargate module"
}