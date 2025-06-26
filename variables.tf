variable "project_id" {}
variable "region"    {}
variable "zone"      {}

variable "instance_name" {}
variable "vm_count" {
  type    = number
  default = 2
}

