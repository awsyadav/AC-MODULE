// EC2 Instance Resource for Module

resource "aws_instance" "ec2_instance" {
  ami           = "${var.ami-id}"
  subnet_id     =  "${var.subnet_id}"
  instance_type = "${var.instance_type}"
  #iam_instance_profile = "${var.iam_instance_profile}"
  vpc_security_group_ids = ["${var.security_group_ids}"]
  key_name               = "${var.key_name}"
  ebs_optimized          = "${var.ebs_optimized}"
  source_dest_check      = "${var.sdcheck}"
  #user_data              = "${var.user_data}"
  root_block_device  {
    volume_type           = "${lookup(var.root_block_device, "volume_type")}"
    volume_size           = "${lookup(var.root_block_device, "volume_size")}"
    delete_on_termination = "${lookup(var.root_block_device, "delete_on_termination")}"
  }

  tags = {
    Name               = "${var.regionname}-${var.env_short}-${var.servicename}-01"
    Environment        = "${var.environment}"
    Owner              = "${var.Owner}"
}

  lifecycle {
    ignore_changes = ["ami", "user_data", "subnet_id", "key_name", "ebs_optimized", "private_ip"]
  }
}

