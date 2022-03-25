locals {
  instance_id    = var.instance_id != "" ? var.instance_id : concat(alicloud_cr_ee_instance.default.*.id, [""])[0]
  namespace_name = var.namespace_name != "" ? var.namespace_name : concat(alicloud_cr_ee_namespace.default.*.name, [""])[0]
  repo_name      = var.repo_name != "" ? var.repo_name : concat(alicloud_cr_ee_repo.default.*.name, [""])[0]
}

resource "alicloud_cr_ee_instance" "default" {
  count                  = var.create_instnace ? 1 : 0
  payment_type           = var.payment_type
  period                 = var.period
  renew_period           = var.renew_period
  renewal_status         = var.renewal_status
  instance_type          = var.instance_type
  instance_name          = var.instance_name
  custom_oss_bucket      = var.custom_oss_bucket
  password               = var.password
  kms_encrypted_password = var.kms_encrypted_password
}

resource "alicloud_cr_ee_namespace" "default" {
  count              = var.create_namespace ? 1 : 0
  instance_id        = local.instance_id
  name               = var.namespace_name
  auto_create        = var.auto_create
  default_visibility = var.default_visibility
}

resource "alicloud_cr_ee_repo" "default" {
  count       = var.create_repo ? 1 : 0
  instance_id = local.instance_id
  name        = var.repo_name
  namespace   = local.namespace_name
  repo_type   = var.repo_type
  summary     = var.repo_summary
  detail      = var.repo_detail
}



