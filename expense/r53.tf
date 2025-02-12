resource "instance_names" "expense" {
  count = length(var.instance_names)
  zone_id = var.zone_id
  name    = "${var.instance_name{count.index}.${var.domain_name}}"
  type    = "A"
  ttl     = 300
  records = [aws_instance.expense[count.index].private_ip]
}