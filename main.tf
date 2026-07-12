data "azurerm_key_vault_secret" "connection_string" {
  for_each     = { for k, v in var.iothub_endpoint_servicebus_topics : k => v if v.connection_string_key_vault_id != null && v.connection_string_key_vault_secret_name != null }
  name         = each.value.connection_string_key_vault_secret_name
  key_vault_id = each.value.connection_string_key_vault_id
}
resource "azurerm_iothub_endpoint_servicebus_topic" "iothub_endpoint_servicebus_topics" {
  for_each = var.iothub_endpoint_servicebus_topics

  iothub_id           = each.value.iothub_id
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  authentication_type = each.value.authentication_type
  connection_string   = each.value.connection_string != null ? each.value.connection_string : try(data.azurerm_key_vault_secret.connection_string[each.key].value, null)
  endpoint_uri        = each.value.endpoint_uri
  entity_path         = each.value.entity_path
  identity_id         = each.value.identity_id
  subscription_id     = each.value.subscription_id
}

