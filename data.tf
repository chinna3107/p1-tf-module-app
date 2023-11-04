data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "web.*"
  owners      = ["683468297985"]
}

data "dns_a_record_set" "private_alb" {
  host = var.private_alb_name
}
