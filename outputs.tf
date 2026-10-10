output "codecommit_approval_rule_template_associations_id" {
  description = "Map of id values across all codecommit_approval_rule_template_associations, keyed the same as var.codecommit_approval_rule_template_associations"
  value       = { for k, v in aws_codecommit_approval_rule_template_association.codecommit_approval_rule_template_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "codecommit_approval_rule_template_associations_approval_rule_template_name" {
  description = "Map of approval_rule_template_name values across all codecommit_approval_rule_template_associations, keyed the same as var.codecommit_approval_rule_template_associations"
  value       = { for k, v in aws_codecommit_approval_rule_template_association.codecommit_approval_rule_template_associations : k => v.approval_rule_template_name if v.approval_rule_template_name != null && length(v.approval_rule_template_name) > 0 }
}
output "codecommit_approval_rule_template_associations_region" {
  description = "Map of region values across all codecommit_approval_rule_template_associations, keyed the same as var.codecommit_approval_rule_template_associations"
  value       = { for k, v in aws_codecommit_approval_rule_template_association.codecommit_approval_rule_template_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "codecommit_approval_rule_template_associations_repository_name" {
  description = "Map of repository_name values across all codecommit_approval_rule_template_associations, keyed the same as var.codecommit_approval_rule_template_associations"
  value       = { for k, v in aws_codecommit_approval_rule_template_association.codecommit_approval_rule_template_associations : k => v.repository_name if v.repository_name != null && length(v.repository_name) > 0 }
}

