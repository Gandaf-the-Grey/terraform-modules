module "tf-module" {
    source = "../modules"
    environment = "Prod"
}

output "vpc-cidr-block" {
  value = module.tf-module.vpc-cidr
}