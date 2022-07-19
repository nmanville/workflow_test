module "basic_vpc" {
  source = "./basic_vpc"
  providers = {
    aws = aws.us_east_1
  }
}
