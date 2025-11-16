# Remote backend using S3 + DynamoDB for locks
terraform {
  backend "s3" {
    bucket         = "ivolvebucket232562315"    # <- replace
    key            = "clouddevopsproject/terraform.tfstate"
    region         = "us-east-1"                    # أو غيّره حسب الحاجة
    dynamodb_table = "terraform-locks"    # <- replace (for state locking)
    encrypt        = true
  }
}

