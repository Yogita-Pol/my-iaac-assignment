locals {
  vpc_seq_id  = "001"
  seq_id      = "001"
  environment = "n"
  cost_centre = "infra"
  build_date  = "04012022"
  version_id  = "001"
  region_id   = "eun1"

  vpc-name               = "vpc-${local.region_id}-${local.environment}-${local.cost_centre}-${local.vpc_seq_id}"

  public-subnet-name-1a  = "subnet-${local.region_id}-${local.environment}-${local.cost_centre}vpc${local.vpc_seq_id}-pub-1a-${local.seq_id}"
  public-subnet-name-1b  = "subnet-${local.region_id}-${local.environment}-${local.cost_centre}vpc${local.vpc_seq_id}-pub-1b-${local.seq_id}"
  public-subnet-name-1c  = "subnet-${local.region_id}-${local.environment}-${local.cost_centre}vpc${local.vpc_seq_id}-pub-1c-${local.seq_id}"

  private-subnet-name-1a = "subnet-${local.region_id}-${local.environment}-${local.cost_centre}vpc${local.vpc_seq_id}-privapp-1a-${local.seq_id}"
  private-subnet-name-1b = "subnet-${local.region_id}-${local.environment}-${local.cost_centre}vpc${local.vpc_seq_id}-privapp-1b-${local.seq_id}"
  private-subnet-name-1c = "subnet-${local.region_id}-${local.environment}-${local.cost_centre}vpc${local.vpc_seq_id}-privapp-1c-${local.seq_id}"

  region = "eu-north-1"

  tags = {
    vpc_seq_id  = local.vpc_seq_id
    seq_id      = local.seq_id
    environment = local.environment
    cost_centre = local.cost_centre
    build_date  = local.build_date
    version_id  = local.version_id
    region_id   = local.region_id
  }
}