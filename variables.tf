locals {
  region         = "ap-south-1"
  name           = "megha-cluster"
  cidr_blocks    = "10.0.0.0/16"
  public_subnet  = ["10.0.101.0/24", "10.0.102.0/24"]
  private_subnet = ["10.0.1.0/24", "10.0.2.0/24"]
  intra_subnet   = ["10.0.5.0/24", "10.0.6.0/24"]
  env            = "dev"
}