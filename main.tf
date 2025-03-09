provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Use the latest AMI
data "aws_ssm_parameter" "latest_amazon_linux_2" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

module "ec2_instance" {
  source            = "./modules/ec2_instance"
  ami               = data.aws_ssm_parameter.latest_amazon_linux_2.value
  instance_type     = "t2.micro"
  region            = "us-east-1"
  sg_name_prefix    = "analytics-test-sg"
  instance_name     = "analytics-test"
  subnet_cidr_block = "10.0.1.0/24"
}
