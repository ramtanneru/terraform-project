terraform {
  source = "ec2/dev/"
}

inputs = {
  instance_type = "t2.micro"
}
