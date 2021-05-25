provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA5EJKZHSXIR7OZ4OO"
  secret_key = "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"
}

resource "aws_instance" "test_key" {
  ami           = "ami-0915bcb5fa77e4892"
  instance_type = var.instancetype[count.index]
  count         = 3
  tags = {
    Name  = var.tags[count.index]
    count = 3
  }
}
