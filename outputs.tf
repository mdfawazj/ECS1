output "service_1_alb_dns" {
  value = aws_lb.service_1_alb.dns_name
}

output "service_2_alb_dns" {
  value = aws_lb.service_2_alb.dns_name
}

output "service_3_alb_dns" {
  value = aws_lb.service_3_alb.dns_name
}
