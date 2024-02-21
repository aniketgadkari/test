/*
output "sec_grp_arn" {
    value = module.sec_grp.endpoint_sg_arn
}

output "sec_grp_id" {
    value = module.sec_grp.endpoint_sg_id
}

output "endpoint_servicename" {
    value = "This is the endpoint created ${module.end_point.endpoint}"
}
*/

output "endpoint" {
    value = aws_vpc_endpoint.ec2.service_name
  
}
