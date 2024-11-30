variable "project_id" {
  description = "The ID of the project where the service account will be created"
  type        = string
}

variable "service_accounts" {
  description = "List of service accounts with their roles"
  type = list(object({
    sa_name = string
    roles   = list(string)
  }))
  default = []
}

variable "provider_id" {
  description = "The provider ID for Workload Identity Federation"
  type        = string
}

variable "pool_id" {
  description = "The pool ID for Workload Identity Federation"
  type        = string
}