variable "organization_webhooks" {
  description = <<EOT
Map of organization_webhooks, attributes below
Required:
    - events
Optional:
    - active
    - configuration (block):
        - content_type (optional)
        - insecure_ssl (optional)
        - secret (optional)
        - url (required)
EOT

  type = map(object({
    events = set(string)
    active = optional(bool)
    configuration = optional(object({
      content_type = optional(string)
      insecure_ssl = optional(bool)
      secret       = optional(string)
      url          = string
    }))
  }))
}

