terraform {
  backend "gcs" {
    bucket  = "tf-state-bucket-vm"
    prefix  = "terraform/vm-mig"
  }
}
