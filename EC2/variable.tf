##### TAGS
variable "regionname" {
    default = "ME"
}

variable "environment" {
    default = "PROD"
}

variable "servicename" {
    default = "AP"
}

variable "env_short" {
    default = "P"
}

variable "Owner" {
    default = "ACME"
}

##### Resource Tags
variable "instance_type" {
    default = "t2.micro"
    description = "EC2 instance type to use"
}
variable "ami-id" {
    default = "ami-07d9160fa81ccffb5"
}


variable "key_name" {
    default = "123"
}

variable "security_group_ids" {
    default = ["sg-00c10e5169cd09e51"]
}


variable "subnet_id" {
  default = "subnet-024ff0e71d8ae3aa8"
  }
  
  variable "sdcheck" {
      default = "true"
  }
  
  variable "root_block_device" {
  default = {
    volume_type           = "gp2"
    volume_size           = "30"
    delete_on_termination = true
  }
}

variable "ebs_optimized" {
    default = "true"
}

# variable "user_data" {
#     default = ""
# }

# variable "iam_instance_profile" {
#     default = ""
# }