variable "vpc-cidr" {
  description = "vpc cidr range"
  type        = string
}

variable "subnet-cidrs" {
  description = "Subnet CIDRS"
  type        = list(string)
}
variable "subnet-names" {
  description = "subnet names"
  type        = list(string)
  default     = ["publicSubnet1", "PublicSubnet2"]
}
