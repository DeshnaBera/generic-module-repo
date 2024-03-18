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

variable "availability_zone" {
  description = "The availability zone of the EBS volume"
}

variable "size" {
  description = "The size of EBS volume in GB"
}

variable "volume_name" {
  description = "The name tag for the EBS Volume"
}

variable "volume_snapshot" {
  description = "The snapshot tag for the EBS Volume"
}

variable "device_name" {
  description = "The device name for EBS volume"
}