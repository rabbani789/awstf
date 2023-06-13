module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "terraform1"
     
    instance_type          = "t2.micro"
  key_name               = "rabbanikey"
  associate_public_ip_address = true
  vpc_security_group_ids = ["sg-0b2eec55bbfc99b30"]
  subnet_id              = "subnet-0dc0ae6fe0cdf79a2"
  user_data              = "${file("data.sh")}"

  tags = {
    name = "terraform1"
  }
}

