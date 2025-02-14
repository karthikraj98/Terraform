# use output.instances_info
# use output.instances_info == aws_instance.expense
output "instance_info" {
    value = aws_instance.expense
}