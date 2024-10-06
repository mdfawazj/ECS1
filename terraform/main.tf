provider "aws" {
  alias   = "us-east-1"
  region  = var.region
}

module "ecs_service_order" {
  source             = "./modules/ecs_service"
  providers          = { aws = aws.us-east-1 }
  env                = var.env
  region             = var.region
  service_name       = "${var.env}-gift-storefront-order-svcs-${var.region}"
  container_image    = var.container_image_order
  container_port     = 9012
  desired_count      = var.desired_count
  subnets            = var.subnets
  security_group     = var.security_group
  vpc_id             = var.vpc_id
  ssl_certificate_arn = var.ssl_certificate_arn
  execution_role_arn = var.execution_role_arn
  task_role_arn      = var.task_role_arn
  target_group_port  = 9012
}
