module "vm_mig" {
  source         = "./modules/vm-mig"
  project_id     = var.project_id
  region         = var.region
  zone           = var.zone
  instance_name  = var.instance_name
  vm_count       = var.vm_count
}
module "vpc" {
  source     = "./modules/VPC"
  project_id = var.project_id
  region     = var.region
}

module "gke" {
  source     = "./modules/gke"
  project_id = var.project_id
  region     = var.region
}


