provider "aws" {
  region = "us-east-2"
}

module "vpc" {
    source = "smbek/vpcbatch5/aws"
    version = "0.0.5"
    region        = "us-east-2"
    vpc_cidr      = "10.0.0.0/16"
    sub1_cidr     = "10.0.1.0/24"
    sub2_cidr     = "10.0.2.0/24"
    sub3_cidr     = "10.0.3.0/24"
    ip_on_launch   = true
    instance_type = "t2.micro"
    subnet1_name  = "Hello1"
    subnet2_name  = "Hello2"
    subnet3_name  = "Hello3"
    ports = [
      { from_port = 22, to_port = 22 },
      { from_port = 80, to_port = 80 },
      { from_port = 81, to_port = 81 },
      { from_port = 82, to_port = 82 }         # Provide list of ports
    ]
}