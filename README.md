# terraform-alicloud-acr-enterprise
Terraform Module for creating Container Registry Enterprise Edition on Alibaba Cloud.

These types of resources are supported:

* [alicloud_cr_ee_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cr_ee_instance)
* [alicloud_cr_ee_namespace](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cr_ee_namespace)
* [alicloud_cr_ee_repo](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cr_ee_repo)

## Usage

<div style="display: block;margin-bottom: 40px;"><div class="oics-button" style="float: right;position: absolute;margin-bottom: 10px;">
  <a href="https://api.aliyun.com/terraform?source=Module&activeTab=document&sourcePath=terraform-alicloud-modules%3A%3Aacr-enterprise&spm=docs.m.terraform-alicloud-modules.acr-enterprise&intl_lang=EN_US" target="_blank">
    <img alt="Open in AliCloud" src="https://img.alicdn.com/imgextra/i1/O1CN01hjjqXv1uYUlY56FyX_!!6000000006049-55-tps-254-36.svg" style="max-height: 44px; max-width: 100%;">
  </a>
</div></div>

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