variable "ingress_rules" {
  default = [
    {
        from_port = 22
        to_port = 22
        protocal = tcp
        cidr_blocks = [0.0.0.0/0]
    },
    {
        from_port = 88
        to_port = 80
        protocal = tcp
        cidr_blocks = [0.0.0.0/0]
    },
    {
        from_port = 8080
        to_port = 8080
        protocal = tcp
        cidr_blocks = [0.0.0.0/0]
    },
  ]
}