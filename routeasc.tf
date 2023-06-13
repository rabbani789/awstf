resource "aws_route_table_association" "rt1" {
  subnet_id      = aws_subnet.mypublicsub-1.id
  route_table_id = aws_route_table.route.id
}
resource "aws_route_table_association" "rt2" {
   subnet_id      = aws_subnet.mypublicsub-2.id
  route_table_id  = aws_route_table.route.id
}
