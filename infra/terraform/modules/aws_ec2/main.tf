resource "aws_instance" "ec2" {
    ami = var.ami.id
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    vpc_security_group_ids = var.vpc_security_group_ids
    key_name= var.key_name  

    tags = merge(var.default_tags, {
    name         = "${var.org_name}-${var.app_name}-${var.service_name}-${var.env}-ec2"
    map-migrated = var.map_migrated_tag
  })
}