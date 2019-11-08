module "application" {
  source                   = "./../../../modules/application"
  environment              = "${var.environment}"
  region                   = "${var.region}"
  images                   = "${var.image}"
  instance_type_bastion    = "${var.instance_type_bastion}"
  instance_type_appserver  = "${var.instance_type_appserver}"
  key_name                 = "${var.key_name}"
  lb_ip_address_type       = "${var.lb_ip_address_type}"
}
