output "service_account_emails" {
  description = "The emails of the created service accounts"
  value       = [for sa in module.gh_oidc : sa.email]
}

output "iam_role_arns" {
  description = "The ARNs of the created IAM roles"
  value       = [for role in module.aws_oidc : role.arn]
}
