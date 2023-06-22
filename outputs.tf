output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_info" {
  value = data.aws_vpc.default
}

output "ami_id" {
  value = data.aws_ami.ami_id.id
}

output "region" {
  value = data.aws_region.current.name
}

output "azs" {
  value = data.aws_availability_zones.available.names
}