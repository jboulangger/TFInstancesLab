variable "vpc_network_lab_1" {
  type = string
  default = "vpc-network-lab-1"
}

variable "vpc_network_lab_2" {
  type = string
  default = "vpc-network-lab-2"
}

variable "name_lab_1" {
  type = object({
    name     = string
    ip_range = string
    region   = string
  })

  default = {
    name     = "lab-1"
    ip_range = "10.0.0.0/24"
    region   = "us-central1"
  }
}

variable "name_lab_2" {
  type = object({
    name     = string
    ip_range = string
    region   = string
  })

  default = {
    name     = "lab-2"
    ip_range = "10.0.10.0/24"
    region   = "us-central1"
  }
} 