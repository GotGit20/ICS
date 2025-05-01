output "subnet_ids" {
  value = {
    subnet1 = aws_subnet.vicertify_subnet["subnet1"].id
    subnet2 = try(aws_subnet.vicertify_subnet["subnet2"].id, null)
    subnet3 = try(aws_subnet.vicertify_subnet["subnet3"].id, null)
    subnet4 = try(aws_subnet.vicertify_subnet["subnet4"].id, null)
    subnet5 = try(aws_subnet.vicertify_subnet["subnet5"].id, null)
    subnet6 = try(aws_subnet.vicertify_subnet["subnet6"].id, null)
  }
}
