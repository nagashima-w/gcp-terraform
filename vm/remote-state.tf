terraform {
    backend "gcs" {
        prefix = "vm"
        bucket = "terraform-tutty5432"
    }
}