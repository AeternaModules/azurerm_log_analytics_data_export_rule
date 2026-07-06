output "log_analytics_data_export_rules" {
  description = "All log_analytics_data_export_rule resources"
  value       = azurerm_log_analytics_data_export_rule.log_analytics_data_export_rules
}
output "log_analytics_data_export_rules_destination_resource_id" {
  description = "List of destination_resource_id values across all log_analytics_data_export_rules"
  value       = [for k, v in azurerm_log_analytics_data_export_rule.log_analytics_data_export_rules : v.destination_resource_id]
}
output "log_analytics_data_export_rules_enabled" {
  description = "List of enabled values across all log_analytics_data_export_rules"
  value       = [for k, v in azurerm_log_analytics_data_export_rule.log_analytics_data_export_rules : v.enabled]
}
output "log_analytics_data_export_rules_export_rule_id" {
  description = "List of export_rule_id values across all log_analytics_data_export_rules"
  value       = [for k, v in azurerm_log_analytics_data_export_rule.log_analytics_data_export_rules : v.export_rule_id]
}
output "log_analytics_data_export_rules_name" {
  description = "List of name values across all log_analytics_data_export_rules"
  value       = [for k, v in azurerm_log_analytics_data_export_rule.log_analytics_data_export_rules : v.name]
}
output "log_analytics_data_export_rules_resource_group_name" {
  description = "List of resource_group_name values across all log_analytics_data_export_rules"
  value       = [for k, v in azurerm_log_analytics_data_export_rule.log_analytics_data_export_rules : v.resource_group_name]
}
output "log_analytics_data_export_rules_table_names" {
  description = "List of table_names values across all log_analytics_data_export_rules"
  value       = [for k, v in azurerm_log_analytics_data_export_rule.log_analytics_data_export_rules : v.table_names]
}
output "log_analytics_data_export_rules_workspace_resource_id" {
  description = "List of workspace_resource_id values across all log_analytics_data_export_rules"
  value       = [for k, v in azurerm_log_analytics_data_export_rule.log_analytics_data_export_rules : v.workspace_resource_id]
}

