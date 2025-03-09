variable "ami" {
  description = "AMI to use for the instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.nano"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "sg_name_prefix" {
  description = "Security Group name prefix"
  type        = string
  default     = "analytics-sg"
}

variable "instance_name" {
  description = "Name of the instance"
  type        = string
  default     = "analytics-instance"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}
