resource "aws_iam_policy" "zero_trust_boundary" {
  name   = "${var.project_name}-permission-boundary"
  path   = "/"
  policy = file("${path.module}/permission-boundary.json")
}

output "zero_trust_boundary_arn" {
  value = aws_iam_policy.zero_trust_boundary.arn
}




