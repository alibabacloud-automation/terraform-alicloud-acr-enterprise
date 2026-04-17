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
  description = "The repository general information. It can contain 1 to 100 characters."
  default     = "repo_summary"
}

variable "repo_detail" {
  type        = string
  description = "The repository specific information. MarkDown format is supported, and the length limit is 2000."
  default     = "repo_detail"
}

