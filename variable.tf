# variables.tf
variable "project_id" {
  description = "The GCP Project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1" # Optional default value
}

variable "bucket_name" {
  description = "The name of the GCS bucket"
  type        = string
}
