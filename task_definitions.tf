resource "aws_ecs_task_definition" "service_1_task" {
  family                   = "${var.env}-service-1"
  container_definitions     = jsonencode([
    {
      name      = "service-1-container"
      image     = var.container_image_1
      cpu       = 256
      memory    = 512
      essential = true
      portMappings = [{
        containerPort = var.container_port
        hostPort      = var.container_port
      }]
    }
  ])
}

resource "aws_ecs_task_definition" "service_2_task" {
  family                   = "${var.env}-service-2"
  container_definitions     = jsonencode([
    {
      name      = "service-2-container"
      image     = var.container_image_2
      cpu       = 256
      memory    = 512
      essential = true
      portMappings = [{
        containerPort = var.container_port
        hostPort      = var.container_port
      }]
    }
  ])
}

resource "aws_ecs_task_definition" "service_3_task" {
  family                   = "${var.env}-service-3"
  container_definitions     = jsonencode([
    {
      name      = "service-3-container"
      image     = var.container_image_3
      cpu       = 256
      memory    = 512
      essential = true
      portMappings = [{
        containerPort = var.container_port
        hostPort      = var.container_port
      }]
    }
  ])
}
