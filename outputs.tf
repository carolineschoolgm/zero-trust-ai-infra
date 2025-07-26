output "iam_role_name" {
  value = aws_iam_role.ai_service_role.name
}

output "kms_key_id" {
  value = aws_kms_key.ai_cmk.key_id
}

output "vpc_id" {
  value = aws_vpc.main.id
}