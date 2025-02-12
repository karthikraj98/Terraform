variable "instance_names" {
    type = list(string)
    default = [ "mysql" , "backend" , "fronted"]
}

variable "common_tags"{
    type = map
    default = {
        Project = "expense"
        Enviornment = "Dev"
        Terraform = "true"
    }
}