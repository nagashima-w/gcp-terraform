variable machine-type {
  default = "n1-standard-1"
}

variable zone {
  default = "asia-northeast1-b"
}

variable image {
  default = "ubuntu-2004-lts"
}

variable disk-size {
  default = 15
}

variable network {
  default = "default"
}

variable install-nginx {
  default = "apt install -y nginx"
}

variable tag-allow-http {
  default = ["http-server"]
}
