variable "vpc_cidr" {
  type = string
  #default = "10.0.0.0/16"
}
# users can create any number of subnets
variable "public_subnet_cidr" {
  type = list
  default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "azs" {
  type = list
  default = ["ap-south-1a","ap-south-1b"]
}

variable "public_subnet_names" {
  type = list
  default = ["public-1a","public-1b"]
}

variable "private_subnets" {
  type = map
  default = {
    private-subnet-1 = {
        Name = "private-1a"
        cidr = "10.0.11.0/24"
        az = "ap-south-1a"
    }

    private-subnet-2 = {
        Name = "private-1b"
        cidr = "10.0.12.0/24"
        az = "ap-south-1b"
    }
  }
}