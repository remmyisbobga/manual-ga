# variables.tf

# The GCP Project ID
variable "project_id" {
  description = "The GCP Project ID to deploy resources to"
  type        = string
}

# The GCP region
variable "region" {
  description = "The GCP region where resources will be created"
  type        = string
}

# The name of the GCS bucket
variable "bucket_name" {
  description = "The name of the GCS bucket to be created"
  type        = string
}

# Path to the Google Cloud credentials file
variable "google_credentials_file" {
  description = "The path to the Google Cloud credentials file"
  type        = string
}
