output "ips_publics" {
  value = {
    for instance_name, instance in google_compute_instance.instancias :
    instance_name => instance.network_interface[0].access_config[0].nat_ip
  }
}
