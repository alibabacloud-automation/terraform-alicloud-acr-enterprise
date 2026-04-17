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


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.212.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | >= 1.212.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_cr_ee_instance.default](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cr_ee_instance) | resource |
| [alicloud_cr_ee_namespace.default](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cr_ee_namespace) | resource |
| [alicloud_cr_ee_repo.default](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cr_ee_repo) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_create"></a> [auto\_create](#input\_auto\_create) | Boolean, when it set to true, repositories are automatically created when pushing new images. If it set to false, you create repository for images before pushing. | `bool` | `false` | no |
| <a name="input_create_instnace"></a> [create\_instnace](#input\_create\_instnace) | Whether to create the alicloud\_cr\_ee\_instance | `bool` | `false` | no |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | Whether to create the alicloud\_cr\_ee\_namespace | `bool` | `false` | no |
| <a name="input_create_repo"></a> [create\_repo](#input\_create\_repo) | Whether to create the alicloud\_cr\_ee\_repo | `bool` | `false` | no |
| <a name="input_custom_oss_bucket"></a> [custom\_oss\_bucket](#input\_custom\_oss\_bucket) | Name of your customized oss bucket. Use this bucket as instance storage if set. | `string` | `null` | no |
| <a name="input_default_visibility"></a> [default\_visibility](#input\_default\_visibility) | PUBLIC or PRIVATE, default repository visibility in this namespace. | `string` | `"PRIVATE"` | no |
| <a name="input_instance_id"></a> [instance\_id](#input\_instance\_id) | The Instance ID | `string` | `""` | no |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Name of Container Registry Enterprise Edition instance. | `string` | `null` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Type of Container Registry Enterprise Edition instance. Valid values: Basic, Standard, Advanced. NOTE: International Account doesn't supports Standard. | `string` | `null` | no |
| <a name="input_kms_encrypted_password"></a> [kms\_encrypted\_password](#input\_kms\_encrypted\_password) | An KMS encrypts password used to an instance. If the password is filled in, this field will be ignored. | `string` | `null` | no |
| <a name="input_namespace_name"></a> [namespace\_name](#input\_namespace\_name) | Name of Container Registry Enterprise Edition namespace. It can contain 2 to 30 characters. | `string` | `""` | no |
| <a name="input_password"></a> [password](#input\_password) | The password of the Instance. The password is a string of 8 to 30 characters and must contain uppercase letters, lowercase letters, and numbers. | `string` | `null` | no |
| <a name="input_payment_type"></a> [payment\_type](#input\_payment\_type) | Subscription of Container Registry Enterprise Edition instance. Default value: Subscription. Valid values: Subscription. | `string` | `"Subscription"` | no |
| <a name="input_period"></a> [period](#input\_period) | Service time of Container Registry Enterprise Edition instance. Default value: 12. Valid values: 1, 2, 3, 6, 12, 24, 36, 48, 60. Unit: month. | `number` | `1` | no |
| <a name="input_renew_period"></a> [renew\_period](#input\_renew\_period) | Renewal period of Container Registry Enterprise Edition instance. Unit: month. | `number` | `null` | no |
| <a name="input_renewal_status"></a> [renewal\_status](#input\_renewal\_status) | Renewal status of Container Registry Enterprise Edition instance. Valid values: AutoRenewal, ManualRenewal. | `string` | `"ManualRenewal"` | no |
| <a name="input_repo_detail"></a> [repo\_detail](#input\_repo\_detail) | The repository specific information. MarkDown format is supported, and the length limit is 2000. | `string` | `null` | no |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | Name of Container Registry Enterprise Edition repository. It can contain 2 to 64 characters. | `string` | `""` | no |
| <a name="input_repo_summary"></a> [repo\_summary](#input\_repo\_summary) | The repository general information. It can contain 1 to 100 characters. | `string` | `null` | no |
| <a name="input_repo_type"></a> [repo\_type](#input\_repo\_type) | PUBLIC or PRIVATE, repo's visibility. | `string` | `"PRIVATE"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | The Instance ID |
| <a name="output_namespace_name"></a> [namespace\_name](#output\_namespace\_name) | The NameSpace Name |
| <a name="output_repo_name"></a> [repo\_name](#output\_repo\_name) | The Repo Name |
<!-- END_TF_DOCS -->


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