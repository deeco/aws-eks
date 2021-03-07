terraform {
  backend "s3" {
    bucket         = "tfstate-529806944401"
    key            = "testeks/ekstf.tfstate"
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "tfstate-locking"
  }
}
