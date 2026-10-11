resource "github_organization_webhook" "organization_webhooks" {
  for_each = var.organization_webhooks

  events = each.value.events
  active = each.value.active

  dynamic "configuration" {
    for_each = each.value.configuration != null ? [each.value.configuration] : []
    content {
      content_type = configuration.value.content_type
      insecure_ssl = configuration.value.insecure_ssl
      secret       = configuration.value.secret
      url          = configuration.value.url
    }
  }
}

