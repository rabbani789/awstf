resource "aws_lb" "external_alb" {
  name               = "external-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.demosg.id]
  subnets            = [aws_subnet.mypublicsub-1.id, aws_subnet.mypublicsub-2.id]

  enable_deletion_protection = false
}
resource "aws_alb_target_group" "target_alb" {
  name        = "target-alb"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.demovpc.id
}


