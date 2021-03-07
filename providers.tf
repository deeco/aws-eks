provider aws {
  region = var.aws-region
}

provider consul {
  address    = "consul.core-services.leaseplan.systems"
  datacenter = "euw1"
}
