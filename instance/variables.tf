variable "subnets" {
  type = object({
    subnet_1 = string
    subnet_2 = string
    network_1 = string
    network_2 = string
  })
}

variable "region" {
  type = string
}
variable "machine_type" {
  type    = string
  default = "e2-micro"
}
variable "linux_server" {
  type = list(object({
    so    = string
    name  = string
    image = string
    disk  = number
  }))
  default = [
    {
      so    = "ubuntu"
      name  = "privateubuntulab"
      image = "ubuntu-2004-focal-v20230907"
      disk  = 10
    },
    {
      so    = "debian"
      name  = "privatedebianlab"
      image = "debian-11-bullseye-v20230912"
      disk  = 10
    },
    {
      so    = "centos"
      name  = "privatecentoslab"
      image = "centos-7-v20230912"
      disk  = 20
    },
    {
      so    = "redhat7"
      name  = "privateinstanceredhat7lab"
      image = "rhel-7-v20230912"
      disk  = 50
    },
    {
      so    = "redhat8"
      name  = "privateinstanceredhat8lab"
      image = "rhel-8-v20230912"
      disk  = 50
    },
    {
      so    = "suse"
      name  = "privatesuselab"
      image = "opensuse-leap-15-4-v20230907-arm64"
      disk  = 50
    }
  ]
}


