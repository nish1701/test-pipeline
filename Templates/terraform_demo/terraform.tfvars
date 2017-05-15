terragrunt = {
# Configure Terragrunt to use DynamoDB for locking
lock = {
  backend = "dynamodb"
  config {
    state_file_id = "my-dynamodb-terragrunt"
  }
}
# Configure Terragrunt to automatically store tfstate files in S3
remote_state = {
  backend = "s3"
  config {
    encrypt = "true"
    bucket = "terraform-state-storage-remote"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}
}