module "gh_oidc" {
  source  = "terraform-google-modules/github-actions-runners/google//modules/gh-oidc"
  version = "4.0.0"

  for_each = { for sa in var.service_accounts : sa.sa_name => sa }

  project_id  = var.project_id
  provider_id = var.provider_id
  pool_id     = var.pool_id
  sa_name     = each.value.sa_name
  roles       = each.value.roles
}
