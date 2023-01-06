resource "null_resource" "tag-privateApp-subnet" {
  count = length(data.aws_subnet_ids.private_app_subnets.ids)
  provisioner "local-exec" {
    command = "aws ec2 create-tags --resources ${tolist(data.aws_subnet_ids.private_app_subnets.ids)[count.index]} --tags Key=kubernetes.io/cluster/${local.eks_cluster_name},Value=shared"
  }
 # depends_on = [aws_eks_cluster.main]
}