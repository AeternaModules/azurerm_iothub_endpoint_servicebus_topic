output "iothub_endpoint_servicebus_topics" {
  description = "All iothub_endpoint_servicebus_topic resources"
  value       = azurerm_iothub_endpoint_servicebus_topic.iothub_endpoint_servicebus_topics
  sensitive   = true
}
output "iothub_endpoint_servicebus_topics_authentication_type" {
  description = "List of authentication_type values across all iothub_endpoint_servicebus_topics"
  value       = [for k, v in azurerm_iothub_endpoint_servicebus_topic.iothub_endpoint_servicebus_topics : v.authentication_type]
}
output "iothub_endpoint_servicebus_topics_connection_string" {
  description = "List of connection_string values across all iothub_endpoint_servicebus_topics"
  value       = [for k, v in azurerm_iothub_endpoint_servicebus_topic.iothub_endpoint_servicebus_topics : v.connection_string]
  sensitive   = true
}
output "iothub_endpoint_servicebus_topics_endpoint_uri" {
  description = "List of endpoint_uri values across all iothub_endpoint_servicebus_topics"
  value       = [for k, v in azurerm_iothub_endpoint_servicebus_topic.iothub_endpoint_servicebus_topics : v.endpoint_uri]
}
output "iothub_endpoint_servicebus_topics_entity_path" {
  description = "List of entity_path values across all iothub_endpoint_servicebus_topics"
  value       = [for k, v in azurerm_iothub_endpoint_servicebus_topic.iothub_endpoint_servicebus_topics : v.entity_path]
}
output "iothub_endpoint_servicebus_topics_identity_id" {
  description = "List of identity_id values across all iothub_endpoint_servicebus_topics"
  value       = [for k, v in azurerm_iothub_endpoint_servicebus_topic.iothub_endpoint_servicebus_topics : v.identity_id]
}
output "iothub_endpoint_servicebus_topics_iothub_id" {
  description = "List of iothub_id values across all iothub_endpoint_servicebus_topics"
  value       = [for k, v in azurerm_iothub_endpoint_servicebus_topic.iothub_endpoint_servicebus_topics : v.iothub_id]
}
output "iothub_endpoint_servicebus_topics_name" {
  description = "List of name values across all iothub_endpoint_servicebus_topics"
  value       = [for k, v in azurerm_iothub_endpoint_servicebus_topic.iothub_endpoint_servicebus_topics : v.name]
}
output "iothub_endpoint_servicebus_topics_resource_group_name" {
  description = "List of resource_group_name values across all iothub_endpoint_servicebus_topics"
  value       = [for k, v in azurerm_iothub_endpoint_servicebus_topic.iothub_endpoint_servicebus_topics : v.resource_group_name]
}
output "iothub_endpoint_servicebus_topics_subscription_id" {
  description = "List of subscription_id values across all iothub_endpoint_servicebus_topics"
  value       = [for k, v in azurerm_iothub_endpoint_servicebus_topic.iothub_endpoint_servicebus_topics : v.subscription_id]
}

