variable "project_id" {
  description = "The ID of the project in which the resource belongs"
  type        = string
}

variable "product_base_name" {
  description = "Cloud resources base name (used to create services)"
  type        = string
}

variable "env" {
  description = "Variable to mark the environment of the resource (used to create services)."
  type        = string
}

variable "network" {
  description = "The name or self_link of the network to attach this firewall to"
  type        = string
}

variable "sql_instance_ip" {
  description = "The SQL database ip address to connect to"
  type        = string
}

variable "sql_port" {
  description = "The database port number to connect to"
  type        = string
  default     = "1433"
}

variable "dataproc_range" {
  description = "CIDR range for Dataproc subnet"
  type        = string
}
