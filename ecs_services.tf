resource "aws_ecs_service" "service_1" {
  name            = "${var.env}-service-1"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.service_1_task.arn
  desired_count   = var.desired_count
  launch_type     = "FARGATE"

  network_configuration {
    subnets         = var.subnets
    security_groups = var.security_groups
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.service_1_tg.arn
    container_name   = "service-1-container"
    container_port   = var.container_port
  }
}

# Repeat for service 2 and service 3
