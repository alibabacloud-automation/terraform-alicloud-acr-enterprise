# terraform-alicloud-acr-enterprise
Terraform Module for creating Container Registry Enterprise Edition on Alibaba Cloud.

These types of resources are supported:

* [alicloud_cr_ee_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cr_ee_instance)
* [alicloud_cr_ee_namespace](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cr_ee_namespace)
* [alicloud_cr_ee_repo](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cr_ee_repo)

## Usage

```hcl
module "example" {
  source          = "terraform-alicloud-modules/acr-enterprise/alicloud"
  create_instnace = true
  payment_type    = "Subscription"
  period          = 1
  instance_type   = "Basic"
  renewal_status  = "ManualRenewal"
  instance_name   = "your_instance_name"

  create_namespace   = true
  namespace_name     = "namespace_name"
  auto_create        = true
  default_visibility = "PUBLIC"

  create_repo  = true
  repo_name    = "module_test_repo_name"
  repo_type    = "PUBLIC"
  repo_summary = "your_summary"
  repo_detail  = "your_detail"
}
```

## Examples

* [complete example](https://github.com/terraform-alicloud-modules/terraform-alicloud-acr-enterprise/tree/main/examples/complete)

## Terraform versions

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.124.0 |

Authors
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)