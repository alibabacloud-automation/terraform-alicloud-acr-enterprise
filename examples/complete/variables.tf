variable "auto_create" {
  type        = bool
  description = "Boolean, when it set to true, repositories are automatically created when pushing new images. If it set to false, you create repository for images before pushing."
  default     = true
}


variable "default_visibility" {
  type        = string
  description = "PUBLIC or PRIVATE, default repository visibility in this namespace."
  default     = "PUBLIC"
}

variable "repo_type" {
  type        = string
  description = "PUBLIC or PRIVATE, repo's visibility."
  default     = "PUBLIC"
}

variable "repo_summary" {
  type        = string
  description = ""
  default     = "repo_summary"
}

variable "repo_detail" {
  type        = string
  description = ""
  default     = "repo_detail"
}

