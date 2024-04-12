variable "region" {
  type        = string
  description = "Provide region"
}

variable "vpc_cidr" {
  type        = string
  description = "Provide VPC cidr block"
}

variable "sub_cidr" {
  type        = list(object({
    cidr = string
    sub_name = string
  }))
  description = "Provide subnet cidr block"
}