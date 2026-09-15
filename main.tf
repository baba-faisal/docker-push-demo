terraform {
  required_version = ">= 1.0"
  
  # For now, using local backend (no cloud needed)
  backend "local" {}
}

# Simple local file resource for testing
resource "local_file" "demo" {
  content  = "This is a test file created by Terraform"
  filename = "${path.module}/test-output.txt"
}
