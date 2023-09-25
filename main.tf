module "vpc" {
  source = "./vpc"
}

module "instance" {
  source  = "./instance"
  subnets = module.vpc.subnets
  region = var.region
}