//variable "instance" {
//  default = "t2.micro"
//  type = string
//}
//output "o1" {
//  value = var.instance
//}

//terraform apply -var="instance=t2.medium"
//it wil create t2.micro on run time.

variable "instance" {}

//variable "y" {
//  type = bool
//}
variable "mtype" {}

//output "o1" {
//  value = var.y ? "anubhav" : "bhardwaj"
//}

variable "istest" {
  type = bool
}
