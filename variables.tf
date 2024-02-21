variable "vpcid" {
  type    = string
  default = "vpc-075f4d5fd82f0752d"

}

variable "endpoint" {
  type    = list(string)
  default = ["ec2", "ssm"]
}

variable "cidr" {
  type    = string
  default = "10.10.10.0/24"

}