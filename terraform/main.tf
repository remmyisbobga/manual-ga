resource "random_id" "bucket_suffix" {
  byte_length = 8
}

resource "google_storage_bucket" "unique_bucket" {
  name          = "${var.bucket_prefix}-${random_id.bucket_suffix.hex}"
  location      = var.region
  storage_class = var.storage_class
  
  uniform_bucket_level_access = true
  
  versioning {
    enabled = var.enable_versioning
  }
  
  lifecycle_rule {
    condition {
      age = var.lifecycle_age
    }
    action {
      type = "Delete"
    }
  }
}

resource "random_id" "bucket_suffix_2" {
  byte_length = 8
}


resource "google_storage_bucket" "unique_bucket_2" {
  name          = "${var.bucket_prefix}-${random_id.bucket_suffix_2.hex}"
  location      = var.region
  storage_class = var.storage_class
  
  uniform_bucket_level_access = true
  
  versioning {
    enabled = var.enable_versioning
  }
}
