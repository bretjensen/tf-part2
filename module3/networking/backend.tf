# BACKENDS
terraform {
  backend "s3" {
    key    = "networking.state"
    region = "eu-west-2"
  }
}
