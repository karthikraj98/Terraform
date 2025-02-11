# 1. command line [ terraform plan -var="instance_type=t3.large" ]
# 2. terraform.tfvars [ terraform plan ]
# 3. environment variables, TF_VAR_your_variable_name [ export TF_VAR_instance_type=t3.xlarge]
# 4. default
# 5. prompt

variable "ami_id" {
    type =  string
    default = "ami-09c813fb71547fc4f"
    description = "This is AMI of DevOps-pratice"    
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tags"{
    type = map
    default = {
        Name = "backend" 
        Project = "expense"
        Component = "backend"
        Enviornment = "DEV"
        Terraform = "true"
    }
}

variable "sg_name" {
  default = "allow_ssh"
}

variable "sg_description"{
    default = "Allow port number 22 for ssh access"
}

variable "from_port" {
    default = 22
    type = number
}

variable "to_port" {
    default = 22
    type = number
}

variable "protocal" {
    default = "tcp"
}

variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}
