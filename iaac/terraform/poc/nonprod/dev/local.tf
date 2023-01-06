locals {
  vpc_seq_id  = "001"
  seq_id      = "001"
  environment = "n"
  cost_centre = "infra"
  build_date  = "04012022"
  version_id  = "001"
  region_id   = "eun1"
  app_service = "mypoc"
  #eks_cluster_name = "eks-${var.region_id}-${var.environment}-${var.cost_centre}-vpc${var.vpc_seq_id}-${var.app_service}-${var.seq_id}"
  vpc_name               = "vpc-${local.region_id}-${local.environment}-${local.cost_centre}-${local.vpc_seq_id}"

  eks_cluster_name="eks-${local.region_id}-${local.environment}-${local.cost_centre}-vpc${local.vpc_seq_id}-${local.app_service}-${local.seq_id}"
  eks_version=1.24
}