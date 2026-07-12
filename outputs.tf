output "log_analytics_data_export_rules_id" {
  description = "Map of id values across all log_analytics_data_export_rules, keyed the same as var.log_analytics_data_export_rules"
  value       = { for k, v in azurerm_log_analytics_data_export_rule.log_analytics_data_export_rules : k => v.id }
}
output "log_analytics_data_export_rules_destination_resource_id" {
  description = "Map of destination_resource_id values across all log_analytics_data_export_rules, keyed the same as var.log_analytics_data_export_rules"
  value       = { for k, v in azurerm_log_analytics_data_export_rule.log_analytics_data_export_rules : k => v.destination_resource_id }
}
output "log_analytics_data_export_rules_enabled" {
  description = "Map of enabled values across all log_analytics_data_export_rules, keyed the same as var.log_analytics_data_export_rules"
  value       = { for k, v in azurerm_log_analytics_data_export_rule.log_analytics_data_export_rules : k => v.enabled }
}
output "log_analytics_data_export_rules_export_rule_id" {
  description = "Map of export_rule_id values across all log_analytics_data_export_rules, keyed the same as var.log_analytics_data_export_rules"
  value       = { for k, v in azurerm_log_analytics_data_export_rule.log_analytics_data_export_rules : k => v.export_rule_id }
}
output "log_analytics_data_export_rules_name" {
  description = "Map of name values across all log_analytics_data_export_rules, keyed the same as var.log_analytics_data_export_rules"
  value       = { for k, v in azurerm_log_analytics_data_export_rule.log_analytics_data_export_rules : k => v.name }
}
output "log_analytics_data_export_rules_resource_group_name" {
  description = "Map of resource_group_name values across all log_analytics_data_export_rules, keyed the same as var.log_analytics_data_export_rules"
  value       = { for k, v in azurerm_log_analytics_data_export_rule.log_analytics_data_export_rules : k => v.resource_group_name }
}
output "log_analytics_data_export_rules_table_names" {
  description = "Map of table_names values across all log_analytics_data_export_rules, keyed the same as var.log_analytics_data_export_rules"
  value       = { for k, v in azurerm_log_analytics_data_export_rule.log_analytics_data_export_rules : k => v.table_names }
}
output "log_analytics_data_export_rules_workspace_resource_id" {
  description = "Map of workspace_resource_id values across all log_analytics_data_export_rules, keyed the same as var.log_analytics_data_export_rules"
  value       = { for k, v in azurerm_log_analytics_data_export_rule.log_analytics_data_export_rules : k => v.workspace_resource_id }
}

