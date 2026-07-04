resource "aws_instance" "example" {
  # meta-argument first
  count = 2

  ami           = "abc123"
  instance_type = "t2.micro"

  # meta-argument block last
  lifecycle {
    create_before_destroy = true
  }
}