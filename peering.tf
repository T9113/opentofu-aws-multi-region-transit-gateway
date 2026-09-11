resource "aws_ec2_transit_gateway_peering_attachment" "cross_region" {
  peer_account_id         = aws_ec2_transit_gateway.primary.owner_id
  peer_region             = "us-west-2"
  peer_transit_gateway_id = var.peer_tgw_id
  transit_gateway_id      = aws_ec2_transit_gateway.primary.id
}
