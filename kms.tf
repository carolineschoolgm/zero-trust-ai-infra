resource "aws_kms_key" "ai_cmk" {
  description         = "CMK for Zero Trust AI Infrastructure"
  enable_key_rotation = true
  policy              = data.aws_iam_policy_document.kms_key_policy.json
}

data "aws_iam_policy_document" "kms_key_policy" {
  statement {
    sid = "Enable IAM User Permissions"
    actions = ["kms:*"]
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"]
    }
    resources = ["*"]
  }
}

data "aws_caller_identity" "current" {}