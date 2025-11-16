terraform {
  backend "s3" {
    bucket         = "ivolvebucket232562315"
    key            = "envs/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
