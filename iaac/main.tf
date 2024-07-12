module "vpc" {
  source       = "./modules/vpc"
  vpc-cidr     = var.vpc-cidr
  subnet-cidrs = var.subnet-cidrs
}


module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id

}

module "ec2" {
  source  = "./modules/ec2"
  sg_id   = module.sg.sg_id
  subnets = module.vpc.subnets
}

module "alb" {
  source    = "./modules/alb"
  sg_id     = module.sg.sg_id
  subnets   = module.vpc.subnets
  vpc_id    = module.vpc.vpc_id
  instances = module.ec2.instances
}
