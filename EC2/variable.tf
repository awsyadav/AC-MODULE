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
    default = ""
    description = "EC2 instance type to use"
}
variable "ami-id" {
    default = ""
}


variable "key_name" {
    default = ""
}

variable "security_group_ids" {
    default = [""]
}


variable "subnet_id" {
  default = ""
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