output "vpc-id" {
  value = aws_vpc.module-vpc.id
}

output "vpc-cidr" {
  value = aws_vpc.module-vpc.cidr_block
}

output "public-subnet-cidr" {
  value = aws_subnet.public-subnet.cidr_block
}

output "private-subnet-cidr" {
  value = aws_subnet.private-subnet.cidr_block
}