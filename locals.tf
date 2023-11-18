locals {
 # name_prefix = "${var.env}-${var.component}"
  name_prefix = "${var.component}-${var.env}"

  tags = merge(var.tags, { tf-module-name = "app" }, { env = var.env })
  parameters   = concat(var.parameters, [var.component])
  policy_resource = [ for i in local.parameters: "arn:aws:ssm:us-east-1:683468297985:parameter/${i}.${var.env}.*"]
}