terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("studentgcpengineer.json")

  project = "studentgcpengineer"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_instance" "instancias" {
  for_each     = var.instancias
  name         = each.key
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = each.value
    }
  }

  network_interface {
    network = "default"

    access_config { 
      network_tier  = "STANDARD"

    }
  }

  tags = ["lab"]
}