terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }

}

provider "aws" {
  region     = "us-east-1"
  profile = "gandalf"
}

resource "aws_vpc" "module-vpc" {
  cidr_block = var.vpc-cidr-block
  tags = {
    "Name" = "terraform-vpc-${var.environment}"
  }
}

resource "aws_subnet" "public-subnet" {
  cidr_block = var.public-subnet-cidr
  vpc_id = aws_vpc.module-vpc.id
  
  tags = {
    "Name" = "terraform-public-subnet-${var.environment}"
  }
}

resource "aws_subnet" "private-subnet" {
  cidr_block = var.private-subnet-cidr
  vpc_id = aws_vpc.module-vpc.id
  
  tags = {
    "Name" = "terraform-private-subnet-${var.environment}"
  }
}
