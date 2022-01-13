module "ecs-fargate" {
  source                        = "cn-terraform/ecs-fargate/aws"
  version                       = "2.0.28"
  container_image               = var.image_name
  container_name                = var.container_name
  name_prefix                   = var.prefix
  private_subnets_ids           = var.private_subnet_ids
  public_subnets_ids            = var.public_subnet_ids
  vpc_id                        = var.vpc_id
  desired_count                 = var.desired_capacity
  lb_enable_deletion_protection = var.enable_DP_LB
  lb_http_ports = {
    "default_http" : {
      "listener_port" : var.listener_port,
      "target_group_port" : var.tg_port
    }
  }
  lb_https_ports = {}
  port_mappings = [
    {
      "containerPort" : var.container_port,
      "hostPort" : var.host_port,
      "protocol" : var.connection_protocol
    }
  ]
  healthcheck = {
    command     = ["CMD curl --fail http://localhost:${var.container_port}/ || exit 1"]
    retries     = 10
    timeout     = 10
    interval    = 5
    startPeriod = 3
  }
}

