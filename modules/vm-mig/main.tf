resource "google_compute_instance_template" "demo" {
  name_prefix = "${var.instance_name}-template"
  project     = var.project_id

  properties {
    machine_type = "e2-medium"
    tags         = ["web"]

    disks {
      boot  = true
      auto_delete = true
      initialize_params {
        image = "debian-cloud/debian-11"
      }
    }

    network_interfaces {
      network = "default"
      access_config {}
    }

    metadata_startup_script = <<-EOT
      #!/bin/bash
      echo "Hello, world!" > /var/www/html/index.html
    EOT
  }
}

resource "google_compute_region_instance_group_manager" "mig" {
  name               = "${var.instance_name}-mig"
  base_instance_name = var.instance_name
  region             = var.region
  project            = var.project_id
  version {
    instance_template = google_compute_instance_template.demo.self_link
  }
  target_size        = var.vm_count
}

