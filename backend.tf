terraform {
  backend "gcs" {
    bucket  = "your-tf-state-bucket-name"
    prefix  = "terraform/state"
  }
}
