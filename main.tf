/* Your main Terraform configuration for the EC2 module */

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}

# Create an EBS volume
resource "aws_ebs_volume" "example_volume" {
  availability_zone = var.availability_zone # Must be in the same AZ as the instance
  size              = var.size            # Size in GB

  tags = {
    Name = var.volume_name,
    Snapshot = var.volume_snapshot
  }
}

# Attach the EBS volume to the EC2 instance
resource "aws_volume_attachment" "ebs_attach" {
  device_name = var.device_name
  volume_id   = aws_ebs_volume.example_volume.id
  instance_id = aws_instance.example.id
}