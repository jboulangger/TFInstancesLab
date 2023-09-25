resource "google_compute_instance" "bastion"{
    name = "bastion"
    machine_type = var.machine_type
    zone = var.region
    tags = ["bastion"]

    boot_disk {
        initialize_params {
            image = local.ubuntu_server.image
            size = local.ubuntu_server.disk
            type = "pd-standard"
        }
    }

    network_interface {
        network = var.subnets.network_1
        subnetwork = var.subnets.subnet_1
        access_config {
            network_tier = "STANDARD"
        }
    }

    network_interface {
        network = var.subnets.network_2
        subnetwork = var.subnets.subnet_2
    }
}

resource "google_compute_instance" "lab_1" {
    count = 1
    name = "${local.debian_server.name}-${count.index}"
    machine_type = var.machine_type
    zone = var.region
    tags = ["lab1"]

    boot_disk {
        initialize_params {
            image = local.debian_server.image
            size = local.debian_server.disk
            type = "pd-standard"
        }
    }

    network_interface {
        network = var.subnets.network_1
        subnetwork = var.subnets.subnet_1
    }
}

resource "google_compute_instance" "lab_2" {
    count = 1
    name = "${local.centos_server.name}-${count.index}"
    machine_type = var.machine_type
    zone = var.region
    tags = ["lab2"]

    boot_disk {
        initialize_params {
            image = local.centos_server.image
            size = local.centos_server.disk
            type = "pd-standard"
        }
    }

    network_interface {
        network = var.subnets.network_2
        subnetwork = var.subnets.subnet_2
    }
} 
