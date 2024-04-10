provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.type
}
# Create tfvars file and provide values
variable "ami_id" {  
  description = "Provide ami id"
  default     = ""
  type        = string
}

variable "type" {
  description = "Provide instance type"
  default     = ""
  type        = string
}
variable "region" {
  description = "Provide region"
  default     = ""
  type        = string
}

#ami           = "ami-0900fe555666598a2"