module "network" {
  source         = "./../../../modules/network"
  project        = "${var.project}"
  environment    = "${var.environment}"
  region         = "${var.region}"
  vpc_cidr_block = "${var.vpc_cidr_block}"
  subnet_bits    = "${var.subnet_bits}"
  azs            = "${var.azs}"
}
