variable "codecommit_approval_rule_template_associations" {
  description = <<EOT
Map of codecommit_approval_rule_template_associations, attributes below
Required:
    - approval_rule_template_name
    - repository_name
Optional:
    - region
EOT

  type = map(object({
    approval_rule_template_name = string
    repository_name             = string
    region                      = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.codecommit_approval_rule_template_associations : (
        length(v.approval_rule_template_name) >= 1 && length(v.approval_rule_template_name) <= 100
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

