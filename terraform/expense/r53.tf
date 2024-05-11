resource "aws_route53_record" "expense" {
  zone_id = var.zone_id
  name    = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = var.instance_names[count.index] == "frontend" ? [aws_instance.expense[count.index].public] : [aws_instance.expense[count.index].private]
  #if recard already exists
  allow_overwrite = true
}
