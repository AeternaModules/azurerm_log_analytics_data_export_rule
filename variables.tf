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
    enabled                 = optional(bool) # Default: false
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_log_analytics_data_export_rule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.LogAnalyticsDataExportName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: workspace_resource_id
  #   source:    [from dataexport.ValidateWorkspaceID] !ok
  # path: workspace_resource_id
  #   source:    [from dataexport.ValidateWorkspaceID] err != nil
  # path: destination_resource_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: destination_resource_id
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: table_names[*]
  #   source:    validation.NoZeroValues(...) - no translation rule yet, add one
}

