variable "instancias" {
  type = map(string)
  default = {
#    "instance_ubuntu" : "ubuntu-2004-focal-v20230907",
    "instancedebian" : "debian-11-bullseye-arm64-v20230912",
#    "instance_redhat7" : "rhel-7-v20230912",
#    "instance_redhat8" : "rhel-8-v20230912",
    "instancecentos" : "centos-7-v20230912",
#    "instance_suse" : "opensuse-leap-15-4-v20230907-arm64"
  }
}
