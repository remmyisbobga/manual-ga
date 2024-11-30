project_id = "your-project-id"
provider_id = "your-provider-id"
pool_id = "your-pool-id"

service_accounts = [
  {
    sa_name = "gha-wif-sa"
    roles   = ["roles/iam.serviceAccountTokenCreator"]
  },
  {
    sa_name = "gha-wif-sa-2"
    roles   = ["roles/storage.objectViewer", "roles/pubsub.publisher"]
  }
]
