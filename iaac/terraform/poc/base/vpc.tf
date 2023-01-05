module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.18.1"

  name = local.vpc-name
  cidr = "10.0.0.0/16"

  azs             = ["${local.region}a", "${local.region}b", "${local.region}c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_ipv6 = true

  enable_nat_gateway = false
  single_nat_gateway = true


  private_subnet_names = [local.private-subnet-name-1a,local.private-subnet-name-1b,local.private-subnet-name-1c]
  public_subnet_names = [local.public-subnet-name-1a,local.public-subnet-name-1b,local.public-subnet-name-1c]

  tags = local.tags
}
