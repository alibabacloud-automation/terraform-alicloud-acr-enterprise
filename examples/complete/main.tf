resource "random_integer" "default" {
  min = 1
  max = 1000
}

module "acr-enterprise" {
  source = "../.."
  #  alicloud_cr_ee_instance
  create_instnace = true
  payment_type    = "Subscription"
  period          = 1
  instance_type   = "Basic"
  renewal_status  = "ManualRenewal"
  instance_name   = "module-test-${random_integer.default.result}"

  #  alicloud_cr_ee_namespace
  create_namespace   = true
  namespace_name     = "namespace_name"
  auto_create        = var.auto_create
  default_visibility = var.default_visibility

  #  alicloud_cr_ee_repo
  create_repo  = true
  repo_name    = "module_test_repo_name"
  repo_type    = var.repo_type
  repo_summary = var.repo_summary
  repo_detail  = var.repo_detail
}