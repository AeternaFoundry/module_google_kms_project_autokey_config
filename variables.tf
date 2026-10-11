variable "kms_project_autokey_configs" {
  description = <<EOT
Map of kms_project_autokey_configs, attributes below
Optional:
    - deletion_policy
    - key_project_resolution_mode
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    deletion_policy             = optional(string)
    key_project_resolution_mode = optional(string)
    project                     = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

