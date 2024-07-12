variable "sg_id" {
  description = "sg id for ec2"
  type        = string
}
variable "subnets" {
  description = "subnets for ec2"
  type        = list(string)
}
variable "ec2-names" {
  description = "ec2 names"
  type        = list(string)
  default     = ["WebServer1", "WebServer2"]
}
