module "vm_mig" {
  source         = "./modules/vm-mig"
  project_id     = var.project_id
  region         = var.region
  zone           = var.zone
  instance_name  = var.instance_name
  vm_count       = var.vm_count
}

