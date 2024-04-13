terraform {
  backend "s3" {
    bucket = "kaizen-mairambek"
    key    = "ohio/terraform.tfstate"
    region = "us-east-2"
  }
}
