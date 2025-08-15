variable "env" {
  type          = string
  description   = "What Env we are creating (dev, qa, production)"
}

variable "vpc_cidr" {
  type          = string
  description   = "VPC CIDR"  
}

variable "subnet_cidr" {
  type          = string
  description   = "Subnet CIDR"  
}

variable "subnet_az" {
  type          = string
  description   = "AZ of the subnet"  
}

variable "vpc_count" {
  type          = number  
  default = 1
  description   = "No of my VPC to be created"
}
