output "id_instance" {
    value = aws_instance.web.*.id
}