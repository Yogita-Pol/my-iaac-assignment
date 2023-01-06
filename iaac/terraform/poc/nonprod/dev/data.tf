data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = [local.vpc_name]
  }
}

# get reference of subnet which contains name as privApp
data "aws_subnet_ids" "private_app_subnets" {
  vpc_id = data.aws_vpc.vpc.id

  tags = {
    Name = "*-privapp-*"
  }
}