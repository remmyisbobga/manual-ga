provider "google" {
  project     = "myzesoftlyproject27"  # Replace with your project ID
  region      = "us-central1"         # Replace with your desired region
  credentials = file("gcp-key.json")  # Use the credentials file created in GitHub Actions
}

resource "google_storage_bucket" "example" {
  name     = "example-bucket"
  location = "US"
}
