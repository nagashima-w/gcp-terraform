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
      image = "ubuntu-1804-lts" # gcloud compute images list
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }

}