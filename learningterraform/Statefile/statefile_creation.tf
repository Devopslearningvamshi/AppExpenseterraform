terraform {
  backend "s3" {
    bucket = "devops-statefile-patelvamshi"
    key    = "testing/state"
    region = "us-east-1"
  }
}
resource "null_resource" "dummy1"{}
resource "null_resource" "dummy2"{}