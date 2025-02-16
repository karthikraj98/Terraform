variable "instances" {
  type = map(any)
  default = {
    mysql    = "t3.small"
    backend  = "t3.micro"
    frontend = "t3.micro"
  }
}

variable "zone_id" {
  default = "Z08329612LLVLHI8AGFPS"
}

variable "domain_name" {
  default = "learningdevops.shop"
}