variable "aws_region" {
  default = "us-east-1"
}

variable "project_name" {
  default = "zero-trust-ai"
}

variable "trusted_account_id" {
  description = "Optional: trusted account for assume role or boundary logic"
  type        = string
  default     = ""
}