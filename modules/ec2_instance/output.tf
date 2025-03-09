output "instance_id" {
  value = aws_instance.analytics_instance.id
}

output "instance_public_ip" {
  value = aws_instance.analytics_instance.public_ip
}
