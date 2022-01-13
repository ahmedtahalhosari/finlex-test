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

variable "desired_capacity" {
  description = "Desired capacity alloacted to the containers"
}

variable "enable_DP_LB" {
  description = "enable the deletion protection for the created loadbalancer"
  default = false
}

variable "listener_port" {
  description= "listener port on the loadbalancer"
  default = "80"
}

variable "tg_port" {
  description= "target group port"
  default = "80"
}

variable "container_port" {
  description= "container port"
  default = "80"
}

variable "host_port" {
  description= "host port"
  default = "80"
}

variable "connection_protocol" {
  description= "The used connection protocol in the port mapping between the host port and container port"
  default = "tcp"
}