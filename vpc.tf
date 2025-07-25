module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${local.name}-vpc"
  cidr = local.cidr_blocks

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = local.private_subnet
  public_subnets  = local.public_subnet
  intra_subnets   = local.intra_subnet

  enable_nat_gateway = true
  enable_vpn_gateway = true


  tags = {
    Terraform   = "true"
    Environment = local.env
  }
}