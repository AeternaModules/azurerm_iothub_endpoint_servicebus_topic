variable "iothub_endpoint_servicebus_topics" {
  description = <<EOT
Map of iothub_endpoint_servicebus_topics, attributes below
Required:
    - iothub_id
    - name
    - resource_group_name
Optional:
    - authentication_type
    - connection_string
    - connection_string_key_vault_id (alternative to connection_string - read from Key Vault instead)
    - connection_string_key_vault_secret_name (alternative to connection_string - read from Key Vault instead)
    - endpoint_uri
    - entity_path
    - identity_id
    - subscription_id
EOT

  type = map(object({
    iothub_id                               = string
    name                                    = string
    resource_group_name                     = string
    authentication_type                     = optional(string)
    connection_string                       = optional(string)
    connection_string_key_vault_id          = optional(string)
    connection_string_key_vault_secret_name = optional(string)
    endpoint_uri                            = optional(string)
    entity_path                             = optional(string)
    identity_id                             = optional(string)
    subscription_id                         = optional(string)
  }))
}

