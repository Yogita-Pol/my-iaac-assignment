



module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version = "19.5.1"
 # depends_on = [null_resource.tag-privateApp-subnet]

  cluster_name                   = local.eks_cluster_name
  cluster_version                = local.eks_version

  cluster_endpoint_public_access = true
  iam_role_use_name_prefix= false

  vpc_id                   = data.aws_vpc.vpc.id
  subnet_ids               = data.aws_subnet_ids.private_app_subnets.ids

  eks_managed_node_groups = {
    my-node-group = {
      min_size     = 1
      max_size     = 2
      desired_size = 1
      instance_types = ["t3.micro"]
      #subnet_ids     = data.aws_subnet_ids.private_app_subnets.ids
    }
  }
}
