name: GCP Infrastructure Deployment

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - '*'

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
