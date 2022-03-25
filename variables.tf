variable "create_instnace" {
  type = bool
  description = "Whether to create the alicloud_cr_ee_instance"
  default = false
}

variable "create_namespace" {
  type = bool
  description = "Whether to create the alicloud_cr_ee_namespace"
  default = false
}

variable "create_repo" {
  type = bool
  description = "Whether to create the alicloud_cr_ee_repo"
  default = false
}

variable "instance_id" {
  type = string
  description = "The Instance ID"
  default = ""
}

#alicloud_cr_ee_instance
variable "payment_type" {
  type = string
  description = " Subscription of Container Registry Enterprise Edition instance. Default value: Subscription. Valid values: Subscription."
  default = "Subscription"
}

variable "period" {
  type = number
  description = "Service time of Container Registry Enterprise Edition instance. Default value: 12. Valid values: 1, 2, 3, 6, 12, 24, 36, 48, 60. Unit: month."
  default = 1
}

variable "renew_period" {
  type = number
  description = "Renewal period of Container Registry Enterprise Edition instance. Unit: month."
  default = null
}

variable "renewal_status" {
  type = string
  description = "Renewal status of Container Registry Enterprise Edition instance. Valid values: AutoRenewal, ManualRenewal."
  default = "ManualRenewal"
}

variable "instance_type" {
  type = string
  description = "Type of Container Registry Enterprise Edition instance. Valid values: Basic, Standard, Advanced. NOTE: International Account doesn't supports Standard."
  default = null
}

variable "instance_name" {
  type = string
  description = "Name of Container Registry Enterprise Edition instance."
  default = null
}

variable "custom_oss_bucket" {
  type = string
  description = "Name of your customized oss bucket. Use this bucket as instance storage if set."
  default = null
}

variable "password" {
  type = string
  description = "The password of the Instance. The password is a string of 8 to 30 characters and must contain uppercase letters, lowercase letters, and numbers."
  default = null
}

variable "kms_encrypted_password" {
  type = string
  description = "An KMS encrypts password used to an instance. If the password is filled in, this field will be ignored."
  default = null
}

variable "kms_encryption_context" {
  type = map(string)
  description = "An KMS encryption context used to decrypt kms_encrypted_password before creating or updating instance with kms_encrypted_password. See Encryption Context. It is valid when kms_encrypted_password is set."
  default = null
}

#alicloud_cr_ee_namespace
variable "namespace_name" {
  type = string
  description = "Name of Container Registry Enterprise Edition namespace. It can contain 2 to 30 characters."
  default = ""
}

variable "auto_create" {
  type = bool
  description = "Boolean, when it set to true, repositories are automatically created when pushing new images. If it set to false, you create repository for images before pushing."
  default = false
}

variable "default_visibility" {
  type = string
  description = "PUBLIC or PRIVATE, default repository visibility in this namespace."
  default = "PRIVATE"
}

#alicloud_cr_ee_repo
variable "repo_name" {
  type = string
  description = "Name of Container Registry Enterprise Edition repository. It can contain 2 to 64 characters."
  default = ""
}

variable "repo_type" {
  type = string
  description = "PUBLIC or PRIVATE, repo's visibility."
  default = "PRIVATE"
}

variable "repo_summary" {
  type = string
  description = "The repository general information. It can contain 1 to 100 characters."
  default = null
}

variable "repo_detail" {
  type = string
  description = "The repository specific information. MarkDown format is supported, and the length limit is 2000."
  default = null
}
