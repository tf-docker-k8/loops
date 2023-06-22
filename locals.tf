locals {
  instance_tenancy = "default"
  public_subnets_length = length(var.public_subnet_cidr)
  current_time = timestamp()
  ami_id = data.aws_ami.ami_id.id
}