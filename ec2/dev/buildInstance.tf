provider "aws" {
    region = var.region_name
}

#  Assing to specific Subnet 
# Security Group
resource "aws_security_group" "web_sg" {
  name        = var.sg_name
  description = "Allow HTTP and SSH"
  vpc_id      = var.vpc_id_name
  

  ingress {
    description = "SSH from home network"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["73.137.88.179/32"]
 
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_name
  }
}

resource "aws_instance" "ram-test-instance" {
    ami           = var.ami_id
    instance_type = var.instance_type
    subnet_id     = var.subnet_name
    key_name      = var.keypair_name
    vpc_security_group_ids = [ aws_security_group.web_sg.id ]
    associate_public_ip_address = var.is_public_ip_needed
    tags = {
        Name = var.tag_name
    }
}


# Define an output variable to expose the public IP address of the EC2 instance
output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.ram-test-instance.public_ip
}