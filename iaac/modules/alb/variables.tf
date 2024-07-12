variable "sg_id" {
  description = "sg id for alb"
  type        = string

}
variable "subnets" {
  description = "subnets for alb"
  type        = list(string)
}
variable "vpc_id" {
  description = "vpc for alb"
  type        = string
}
variable "instances" {
  description = "instance id for tga"
  type        = list(string)

}
