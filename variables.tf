variable "do_token" {
  type        = string
  description = "Token to access Digital Ocean resources."
}

variable "droplet_image" {
  type        = string
  description = "Base image for droplet"
}

variable "droplet_names" {
  type        = list(string)
  description = "Name of droplets"
}

variable "do_region" {
  type        = string
  description = "Region of droplet"
}

variable "droplet_size" {
  type        = string
  description = "Size of droplet"
}

variable "droplet_ssh_keys" {
  type        = list(string)
  description = "List of ssh keys"
}

variable "lb_name" {
  type        = string
  description = "Load Balancer name"
}

variable "pg_cluster_name" {
  type        = string
  description = "Postgres cluster name"
}

variable "pg_version" {
  type        = string
  description = "Postgres version"
  default     = "13"
}

variable "pg_cluster_size" {
  type        = string
  description = "Postgres cluster size"
}

variable "pg_node_count" {
  type        = number
  description = "Postgres node count"
  default     = 1
}

variable "database_name" {
  type        = string
  description = "Postgres database"
}

variable "database_username" {
  type        = string
  description = "Postgres database username"
}

variable "firewall_name" {
  type        = string
  description = "Firewall name"
}

variable "troubleshooting" {
  type        = bool
  description = "Open ssh port"
  default     = false
}

variable "domain" {
  type        = string
  description = "Domain url"
}
