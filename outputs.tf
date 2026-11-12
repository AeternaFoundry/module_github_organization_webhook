output "organization_webhooks_id" {
  description = "Map of id values across all organization_webhooks, keyed the same as var.organization_webhooks"
  value       = { for k, v in github_organization_webhook.organization_webhooks : k => v.id }
}
output "organization_webhooks_active" {
  description = "Map of active values across all organization_webhooks, keyed the same as var.organization_webhooks"
  value       = { for k, v in github_organization_webhook.organization_webhooks : k => v.active }
}
output "organization_webhooks_configuration" {
  description = "Map of configuration values across all organization_webhooks, keyed the same as var.organization_webhooks"
  value       = { for k, v in github_organization_webhook.organization_webhooks : k => one(v.configuration) }
  sensitive   = true
}
output "organization_webhooks_etag" {
  description = "Map of etag values across all organization_webhooks, keyed the same as var.organization_webhooks"
  value       = { for k, v in github_organization_webhook.organization_webhooks : k => v.etag }
}
output "organization_webhooks_events" {
  description = "Map of events values across all organization_webhooks, keyed the same as var.organization_webhooks"
  value       = { for k, v in github_organization_webhook.organization_webhooks : k => v.events }
}
output "organization_webhooks_url" {
  description = "Map of url values across all organization_webhooks, keyed the same as var.organization_webhooks"
  value       = { for k, v in github_organization_webhook.organization_webhooks : k => v.url }
}

