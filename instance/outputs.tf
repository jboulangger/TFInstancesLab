output "bastion" {
  value = {
    name = google_compute_instance.bastion.name
    ip_private = google_compute_instance.bastion.network_interface.0.network_ip
    ip_public = google_compute_instance.bastion.network_interface.0.access_config.0.nat_ip
  }
}

output "lab_1" {
  value = {
    name = google_compute_instance.lab_1.*.name
    ip_private = google_compute_instance.lab_1.*.network_interface.0.network_ip
  }
}

output "lab_2" {
  value = {
    name = google_compute_instance.lab_2.*.name
    ip_private = google_compute_instance.lab_2.*.network_interface.0.network_ip
  }
}