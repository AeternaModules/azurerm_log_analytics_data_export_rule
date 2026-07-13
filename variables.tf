variable "log_analytics_data_export_rules" {
  description = <<EOT
Map of log_analytics_data_export_rules, attributes below
Required:
    - destination_resource_id
    - name
    - resource_group_name
    - table_names
    - workspace_resource_id
Optional:
    - enabled
EOT

  type = map(object({
    destination_resource_id = string
    name                    = string
    resource_group_name     = string
    table_names             = set(string)
    workspace_resource_id   = string
    enabled                 = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_data_export_rules : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_data_export_rules : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_data_export_rules : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

