terraform {
  required_version = ">= 1.6.0"
}
resource "aws_ec2_transit_gateway" "primary" {
  description                     = "Hub Transit Gateway us-east-1"
  auto_accept_shared_attachments  = "enable"
  default_route_table_association = "enable"
}
