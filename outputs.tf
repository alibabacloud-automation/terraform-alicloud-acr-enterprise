output "instance_id" {
  description = "The Instance ID"
  value       = concat(alicloud_cr_ee_instance.default.*.id, [""])[0]
}

output "namespace_name" {
  description = "The NameSpace Name"
  value       = concat(alicloud_cr_ee_namespace.default.*.name, [""])[0]
}

output "repo_name" {
  description = "The Repo Name"
  value       = concat(alicloud_cr_ee_repo.default.*.name, [""])[0]
}