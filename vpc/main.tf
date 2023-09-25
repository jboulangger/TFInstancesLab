resource "google_compute_network" "vpc_network_lab_1" {
  name                    = var.vpc_network_lab_1
  description             = "Network para el laboratorio 1 del parchado automático"
  auto_create_subnetworks = false
  network_firewall_policy_enforcement_order = "BEFORE_CLASSIC_FIREWALL"
}

resource "google_compute_subnetwork" "network-private-range-1" {
  name          = var.name_lab_1.name
  ip_cidr_range = var.name_lab_1.ip_range
  region        = var.name_lab_1.region
  network       = google_compute_network.vpc_network_lab_1.self_link
}

resource "google_compute_network" "vpc_network_lab_2" {
  name                    = var.vpc_network_lab_2
  description             = "Network para el laboratorio 2 del parchado automático"
  auto_create_subnetworks = false
  network_firewall_policy_enforcement_order = "BEFORE_CLASSIC_FIREWALL"
}

resource "google_compute_subnetwork" "network-private-range-2" {
  name          = var.name_lab_2.name
  ip_cidr_range = var.name_lab_2.ip_range
  region        = var.name_lab_2.region
  network       = google_compute_network.vpc_network_lab_2.self_link
}

resource "google_compute_firewall" "firewall_1" {
  name  = "firewall-lab-1"
  network = google_compute_network.vpc_network_lab_1.self_link 

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = ["22", "5986"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "firewall_2" {
  name  = "firewall-lab-2"
  network = google_compute_network.vpc_network_lab_2.self_link

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = ["22", "5986"]
  }

  source_ranges = ["0.0.0.0/0"]

}


