module "vpc" {
  source      = "../../modules/vpc"
  vpc_cidr    = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
  subnet_az   = "${var.aws_region}a"
  vpc_count   = 0
  env         = "production"
}

module "ec2" {
  source        = "../../modules/ec2"
  ami_id        = "ami-0144277607031eca2"
  instance_type = "t2.micro"
  subnet_id     = module.vpc.subnet_id
  ec2_count     = 0
  env           = "production"
}

/* module "s3" {
  source      = "../../modules/s3"
  bucket_name = "my-production-bucket-infra-pipeline-deployment"
  env         = "production"
  tags = {
    Environment = "production"
    Project     = "Infra-pipeline-deployment"
  }
} */