output "id_instance" {
    value = aws_instance.metricbeat.*.id
}