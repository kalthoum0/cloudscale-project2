variable "student_name" { type = string }
variable "location" {
  type    = string
  default = "switzerlandnorth"
}
variable "environment" {
  type    = string
  default = "production"
}
variable "project" {
  type    = string
  default = "cloudscale-project2"
}
variable "admin_username" {
  type    = string
  default = "azureuser"
}
variable "vm_size" {
  type    = string
  default = "Standard_B2ats_v2"
}
variable "ssh_public_key" { type = string }
variable "docker_image" { type = string }
