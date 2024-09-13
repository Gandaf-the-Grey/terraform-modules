module "tf-vpc" {
  source = "../modules"
  environment = "Dev"
}

output "vpc-cidr-block" {
  value = module.tf-vpc.vpc-cidr
}