resource "aws_vpc" "main" {
    cidr_block       = var.vpc_cidr
    instance_tenancy = local.instance_tenancy
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
      Name = "timing"
      Terraform = "true"
      Environment = "DEV"
      CreatedDate = local.current_time
    }
}

resource "aws_subnet" "public_subnets" {
  #count = length(var.public_subnet_cidr) #count=2
  count = local.public_subnets_length
  vpc_id = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr[count.index]
  availability_zone = var.azs[count.index]

  tags = {
    Name = var.public_subnet_names[count.index]
  }
}


resource "aws_subnet" "private_subnets" {
  for_each = var.private_subnets
  vpc_id = aws_vpc.main.id
  cidr_block = each.value.cidr
  availability_zone = each.value.az

  tags = {
    Name = each.value.Name
  }
}

resource "aws_instance" "your-wish" {
    ami = local.ami_id
    instance_type = "t2.micro"
}
