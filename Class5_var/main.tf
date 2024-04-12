provider "aws" {
  region = var.region
}
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}
resource "aws_subnet" "main1" {
  vpc_id                  = aws_vpc.main.id
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}a"
  cidr_block              = var.sub_cidr[0].cidr

  tags = {
    Name = var.sub_cidr[0].sub_name
  }
}
resource "aws_subnet" "main2" {
  vpc_id                  = aws_vpc.main.id
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}b"
  cidr_block              = var.sub_cidr[1].cidr

  tags = {
    Name = var.sub_cidr[1].sub_name
  }
}
resource "aws_subnet" "main3" {
  vpc_id                  = aws_vpc.main.id
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}c"
  cidr_block              = var.sub_cidr[2].cidr

  tags = {
    Name = var.sub_cidr[2].sub_name
  }
}