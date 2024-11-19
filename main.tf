# # main.tf
# provider "google" {
#   project     = var.project_id
#   region      = var.region
#   credentials = file(var.google_credentials_file)

# }

# resource "google_storage_bucket" "example_bucket" {
#   name          = "${var.bucket_name}-${random_id.unique_id.hex}"
#   location      = var.region
#   storage_class = "STANDARD"
# }
# resource "random_id" "unique_id" {
#   byte_length = 4
# }


