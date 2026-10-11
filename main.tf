resource "google_kms_project_autokey_config" "kms_project_autokey_configs" {
  for_each = var.kms_project_autokey_configs

  deletion_policy             = each.value.deletion_policy
  key_project_resolution_mode = each.value.key_project_resolution_mode
  project                     = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

