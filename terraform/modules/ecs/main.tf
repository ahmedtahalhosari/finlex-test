module "ecs-fargate" {
  source  = "cn-terraform/ecs-fargate/aws"
  version = "2.0.28"
  container_image = var.image_name
  container_name = var.container_name
  name_prefix = var.prefix
  private_subnets_ids = var.private_subnet_ids
  public_subnets_ids = var.public_subnet_ids
  vpc_id = var.vpc_id
  desired_count = 2
  lb_http_ports = {
    "default_http": {
    "listener_port": 80,
    "target_group_port": 80
    }
  }
  lb_https_ports = {}
  port_mappings = [
  {
    "containerPort": 80,
    "hostPort": 80,
    "protocol": "tcp"
  }
]
}