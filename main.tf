/*
resource "aws_vpc_endpoint" "ec2" {
  vpc_endpoint_type  = "Interface"
  vpc_id             = var.vpcid
  service_name       = "com.amazonaws.us-east-1.ec2"
  security_group_ids = [aws_security_group.epsg.id]
  tags = {
    Name = "ecvpcendpoint"
  }

}
resource "aws_security_group" "epsg" {
  name   = "ep_sg"
  vpc_id = var.vpcid

  ingress {
    from_port   = 443
    to_port     = 443
    cidr_blocks = [var.cidr]
    protocol    = "tcp"
  }
  tags = {
    Name = "ec2-vpcendpoint"
  }

}
*/

module "sec_grp" {
  source = "./modules/sgs"  
  cidr = "10.20.0.0/16"
}

module "end_point" {
  source = "./modules/endpoints"  
  vpcid = "vpc-0684439dd827d81b9"
  sg_id = toset([module.sec_grp.endpoint_sg_id])
  #sg_id = module.sec_grp.endpoint_sg_id
}