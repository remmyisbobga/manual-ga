# Variables
variable "project_id" {
  description = "GCP Project ID"
  type        = string
  default = ""
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}

variable "bucket_prefix" {
  description = "Prefix for bucket name"
  type        = string
  default     = "my-unique-bucket"
}

variable "storage_class" {
  description = "Storage class for the bucket"
  type        = string
  default     = "STANDARD"
}

variable "enable_versioning" {
  description = "Enable versioning for the bucket"
  type        = bool
  default     = false
}

variable "lifecycle_age" {
  description = "Number of days after which objects should be deleted"
  type        = number
  default     = 30
}