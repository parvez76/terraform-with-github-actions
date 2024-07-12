variable "vpc-cidr" {
  description = "vpc cidr range"
  type        = string
}
variable "subnet-cidrs" {
  description = "Subnet CIDRS"
  type        = list(string)
}
