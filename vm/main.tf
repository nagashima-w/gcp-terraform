provider "google" {
  project = "terraform-tutty5432"
  region  = "asia-northeast1"
}

resource "google_compute_instance" "first" {
  name         = "first-instance"
  machine_type = var.machine-type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image # gcloud compute images list
      size  = var.disk-size
    }
  }

  network_interface {
    network = var.network

    access_config {
    }
  }

  metadata_startup_script = var.install-nginx

  tags = var.tag-allow-http
}

resource "google_compute_instance" "second" {
  name         = "second-instance"
  machine_type = var.machine-type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image # gcloud compute images list
      size  = var.disk-size
    }
  }

  network_interface {
    network = var.network

    access_config {
    }
  }

  metadata_startup_script = var.install-nginx

  tags = var.tag-allow-http
}
