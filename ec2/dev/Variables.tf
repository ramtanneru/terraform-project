
# Define an input variable for the EC2 instance type
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "region_name" {
  description = "Region Name"
  type        = string
  default     = "us-east-1"
}

variable "keypair_name" {
  description = "KeyPair Name"
  type        = string
  default     = "qts-ram-test-kp"
}

variable "subnet_name" {
  description = "Subnet Name where this Instance is living"
  type        = string
  default     = "subnet-0b32b38bc80ccae02"
}

variable "instance_name" {
  description = "Instance Name"
  type        = string
  default     = "ram-test-instance-name"
}

# Define an input variable for the EC2 instance AMI ID
variable "ami_id" {
  description = "EC2 AMI ID"
  type        = string
  default = "ami-0f88e80871fd81e91"
}

variable "tag_name" {
  description = "Tag Name"
  type        = string
  default = "qts-demo-instance"
}

variable "sg_name" {
  description = "SecurityGroup Name"
  type        = string
  default = "qts-sg-name"
}

variable "vpc_id_name" {
  description = "VPC ID Where instances will be deployed"
  type        = string
  default = "vpc-01f6c79fb145a9b6c"
}

variable "is_public_ip_needed" {
  description = "VPC ID Where instances will be deployed"
  type        = bool
  default = false
}

