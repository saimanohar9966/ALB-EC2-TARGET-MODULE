module "ec2" {
   source = "./modules/common/ec2"
   ami = "ami-074dc0a6f6c764218"
   instance_type = "t2.micro"
   availability_zone = "ap-south-1a"
   key_name = "jenkins"
}

module "alb" {
  source = "./modules/common/alb"
  security_groups = "sg-09b739ecf1918a232"
  target_id      = "aws_instance.ec2.id"
   vpc_id = "vpc-001d46f7e8f0ec736"
depends_on = [module.ec2]
}
