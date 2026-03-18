module "vpc" {
  source = "../../modules/vpc"

  name = "orbitops-test-vpc"
  cidr = "10.10.0.0/16"
  azs  = ["ap-south-1a", "ap-south-1b"]
}

module "eks" {
  source = "../../modules/eks"

  cluster_name     = "orbitops-test"
  vpc_id           = module.vpc.vpc_id
  private_subnets  = module.vpc.private_subnets
}

module "ecr" {
  source = "../../modules/ecr"

  name = "orbitops-test-repo"
}