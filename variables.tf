variable "project_id" {
  description = "ID of the project in which the resources should be created."
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

variable "allow_egress" {
  description = "The CIDR range to which connections are allowed."
  type        = set(string)
}

variable "egress_port" {
  description = "The TCP port number to which the connection is allowed."
  type        = string
}

variable "allow_ingress" {
  description = "The CIDR range from which connections are allowed."
  type        = set(string)
}
