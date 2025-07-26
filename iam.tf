resource "aws_iam_role" "ai_service_role" {
  name               = "${var.project_name}-ai-service-role"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
  permissions_boundary = aws_iam_policy.zero_trust_boundary.arn
}

data "aws_iam_policy_document" "assume_role" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}