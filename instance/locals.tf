locals {
  ubuntu_server  = var.linux_server[index(var.linux_server.*.so, "ubuntu")]
  debian_server  = var.linux_server[index(var.linux_server.*.so, "debian")]
  centos_server  = var.linux_server[index(var.linux_server.*.so, "centos")]
  redhat7_server = var.linux_server[index(var.linux_server.*.so, "redhat7")]
  redhat8_server = var.linux_server[index(var.linux_server.*.so, "redhat8")]
  suse_server    = var.linux_server[index(var.linux_server.*.so, "suse")]
}