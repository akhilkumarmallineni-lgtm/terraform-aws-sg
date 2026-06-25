resource "aws_security_group" "main" {
  name        = var.sg_name
  vpc_id      = var.vpc_id
  description = "Allow traffic for ${var.sg_name} project ${var.project} in ${var.environment}"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = merge(
    sg_tags,
    local.common_tags
  )
}