<<<<<<< HEAD
name: GCP Infrastructure Deployment

on:
  push:
    branches:
      - '*'  # Trigger on pushes to any branch

env:
  PROJECT_ID: ${{ secrets.GCP_PROJECT }}

permissions:
  contents: 'read'

jobs:
  terraform:
    name: Terraform
    runs-on: ubuntu-latest

    steps:
    - name: Checkout code
      uses: actions/checkout@v4

    - name: Setup Google Cloud Auth
      id: 'auth'
      uses: 'google-github-actions/auth@v2'
      with:
        workload_identity_provider: ${{ secrets.GCP_WORKLOAD_IDENTITY_PROVIDER }}
        service_account: ${{ secrets.GCP_SERVICE_ACCOUNT }}

    - name: Install Terraform
      uses: hashicorp/setup-terraform@v2
      with:
        terraform_version: 1.9.8

    - name: Terraform Init
      run: terraform init

    - name: Terraform Plan
      run: terraform plan

    - name: Terraform Apply
      if: github.ref == 'refs/heads/main'
      run: terraform apply -auto-approve
=======
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
>>>>>>> 25719b5 (resources)
