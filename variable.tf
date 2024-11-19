# variables.tf

# The GCP Project ID
variable "project_id" {
  description = "The GCP Project ID"
  type        = string
  default     = "myzesoftlyproject27" # Default value for project ID
}

# The GCP region
variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1" # Optional default value
}

# The name of the GCS bucket
variable "bucket_name" {
  description = "The name of the GCS bucket"
  type        = string
}

# Path to the Google Cloud credentials file
variable "google_credentials_file" {
  description = "The path to the Google Cloud credentials file"
  type        = string
  default     = "/home/runner/gcloud-key.json"
}
