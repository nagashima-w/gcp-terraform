provider "google" {
  project = "terraform-tutty5432"
  region  = "asia-northeast1"
}

variable machine-type {
  default = "n1-standard-1"
}

resource "google_compute_instance" "first" {
  name         = "first-instance"
  machine_type = var.machine-type
  zone         = "asia-northeast1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-lts" # gcloud compute images list
      size  = 15
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }

  metadata_startup_script = "apt install -y nginx"

  tags = ["http-server"]
}

