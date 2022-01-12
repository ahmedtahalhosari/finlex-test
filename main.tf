  module "test-web-app" {
    source = "./modules/ecs"
    image_name = "ahmedtahalhosari/sample-webapp:1.1"
    container_name = "simple-webapp"
    prefix = "test-webapp"
    private_subnet_ids = module.Admin_VPC.private_subnets
    public_subnet_ids = module.Admin_VPC.public_subnets
    vpc_id = module.Admin_VPC.vpc_id

    
}