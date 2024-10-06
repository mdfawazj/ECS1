resource "aws_ecs_task_definition" "task" {
  family = "${var.env}-${var.service_name}"
  execution_role_arn = var.execution_role_arn
  task_role_arn = var.task_role_arn
  container_definitions = jsonencode([
    {
      name = "${var.env}-${var.service_name}"
      image = var.container_image
      portMappings = [{ containerPort = var.container_port, hostPort = var.container_port }]
    }
  ])
}
