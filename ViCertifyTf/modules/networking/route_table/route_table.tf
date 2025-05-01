resource "aws_route_table" "vicertify_route_table" {
  vpc_id = var.vpc_id

  dynamic "route" {
    for_each = var.routes
    content {
      cidr_block = route.value.cidr_block
      gateway_id = route.value.gateway_id
    }
  }

  tags = var.tags

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_main_route_table_association" "vicertify_route_table_association" {
  vpc_id         = var.vpc_id
  route_table_id = aws_route_table.vicertify_route_table.id

  lifecycle {
    prevent_destroy = true
  }
}