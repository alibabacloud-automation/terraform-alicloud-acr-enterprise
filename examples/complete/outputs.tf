output "instance_id" {
  description = "The Instance ID"
  value       = module.acr-enterprise.instance_id
}

output "namespace_name" {
  description = "The NameSpace Name"
  value       = module.acr-enterprise.namespace_name
}

output "repo_name" {
  description = "The Repo Name"
  value       = module.acr-enterprise.repo_name
}