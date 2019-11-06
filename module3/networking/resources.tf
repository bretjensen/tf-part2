provider "aws" {
  region = "eu-west-2"
}

# DATA
data "aws_availability_zones" "available" {}

# RESOURCES

# NETWORKING
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name   = "Terraform-${terraform.workspace}"

  cidr            = "10.0.0.0/16"
  azs             = "${slice(data.aws_availability_zones.available.names, 0, var.subnet_count)}"
  private_subnets = ["10.0.1.0/24"]
  public_subnets  = ["10.0.0.0/24"]

  enable_nat_gateway           = true
  create_database_subnet_group = false


  tags = {
    Environment = "${terraform.workspace}"
  }
}

