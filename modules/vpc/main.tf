resource "aws_vpc" "myvpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  count            = var.vpc_count

  tags = {
    Name = "${var.env}-vpc"
  }
}
resource "aws_subnet" "main" {
  count             = var.vpc_count  
  vpc_id            = aws_vpc.myvpc[count.index].id
  cidr_block        = var.subnet_cidr
  availability_zone = var.subnet_az

  tags = {
    Name = "${var.env}-subnet"
  }
}