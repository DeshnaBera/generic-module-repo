// Declare input variables for the EC2 module 
variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
}
 
variable "instance_type" {
  description = "The instance type for the EC2 instance"
}
 
variable "instance_name" {
  description = "The name tag for the EC2 instance"
}