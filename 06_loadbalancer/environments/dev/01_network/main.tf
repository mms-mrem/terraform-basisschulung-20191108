module "network" {
  source         = "./../../../modules/network"
  environment    = "${var.environment}"
  region         = "${var.region}"
  vpc_cidr_block = "${var.vpc_cidr_block}"
  subnet_bits    = "${var.subnet_bits}"
  azs            = "${var.azs}"
}
