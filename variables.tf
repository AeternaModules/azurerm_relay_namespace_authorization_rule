variable "relay_namespace_authorization_rules" {
  description = <<EOT
Map of relay_namespace_authorization_rules, attributes below
Required:
    - name
    - namespace_name
    - resource_group_name
Optional:
    - listen
    - manage
    - send
EOT

  type = map(object({
    name                = string
    namespace_name      = string
    resource_group_name = string
    listen              = optional(bool) # Default: false
    manage              = optional(bool) # Default: false
    send                = optional(bool) # Default: false
  }))
}

