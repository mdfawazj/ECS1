resource "aws_lb" "service_1_alb" {
  name               = "${var.env}-service-1-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = var.security_groups
  subnets            = var.subnets
}

resource "aws_lb_target_group" "service_1_tg" {
  name        = "${var.env}-service-1-tg"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"
}

resource "aws_lb_listener" "service_1_listener" {
  load_balancer_arn = aws_lb.service_1_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.service_1_tg.arn
  }
}

# Repeat for service 2 and service 3
