
output "aws_lb_lb_dns_name" {
  value = module.ecs-fargate.aws_lb_lb_dns_name
}

output "aws_lb_lb_zone_id" {
  value = module.ecs-fargate.aws_lb_lb_zone_id
}
