output "subnets" {
    value = {
        network_1 = google_compute_network.vpc_network_lab_1.self_link
        network_2 = google_compute_network.vpc_network_lab_2.self_link
        subnet_1 = google_compute_subnetwork.network-private-range-1.self_link
        subnet_2 = google_compute_subnetwork.network-private-range-2.self_link
    }
}