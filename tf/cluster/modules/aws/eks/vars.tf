variable "environment" {
default = ""
description = "The environment which to fetch the configuration for."
type = string
}


variable "cluster_encryption_config_enabled" {
  type        = bool
  description = "Set to `true` to enable Cluster Encryption Configuration"
  default     = true
}

variable "clustername" {
  type        = string
  description = "EKS Cluster Name"
  default     = "WORDPRESS"
}

variable "organization" {
  type        = string
  description = "entity Cluster Name"
  default     = "solcomputing"
}

variable "eks_cluster_region" {
   type        = string
   description = "EKS Cluster Region"
   default     = "eu-west-3"
}

variable "eks_policy_user" {
   type        = string
   description = "Account builder"
   default     = "" 
}

variable "enable_monitoring" {
   type       = bool
   default    = false
}

variable "K8S_GITLAB_KASADDR" {
   type        = string
   default     = "wss://kas.gitlab.com"
}

variable "K8S_GITLAB_TOKEN" {
   type        = string
   default     = "glagent--5H4zd285ARfZWNERuvss_XnA3sv8WR546bWEL2eLWsAAJzfkw"
}


variable "hosts_domain" {
   type        = list(string)
   default     = ["blog", "www"]
}

variable "domain_name" {
   type        = string
   default     = "solcomputing.net"
}

variable "namespace" {
    sensitive = false
}

variable "region" {
   type        = string
   default     = "eu-west-3"
}

variable "vpcid" {
   type        = string
   default     = ""
}

variable "chart_env_overrides" {
  description = "env values passed to the load balancer controller helm chart."
  type        = map(any)
  default     = {}
}

variable "monitoring" {
}

variable "enable_gitlab_agent" {
   type       = bool
   default    = false
}

variable "enable_management" {
   type       = bool
   default    = false
}

variable "instance_types" {}
variable "subnet_private_ids" {}
variable "subnet_public_ids" {}


variable "account" {
   type        = string
   default     = "terraform"
}

variable "profile" {
   type        = string
   default     = "admin"
}

variable "secretAccessKey" {
   type        = string
   default     = ""
}

variable "accessKeyId" {
   type        = string
   default     = ""
}

variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))

  default = [
    {
      name    = "aws-ebs-csi-driver"
      version = "v1.29.1-eksbuild.1"
    }
  ]
}
