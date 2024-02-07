resource "aws_sfn_state_machine" "this" {
  count = var.create ? 1 : 0

  name = var.name

  role_arn   = var.role_arn
  definition = var.definition

  dynamic "logging_configuration" {
    for_each = length(keys(var.logging_configuration)) > 0 ? [1] : []
    content {
      log_destination        = var.logging_configuration["log_destination"]
      include_execution_data = var.logging_configuration["include_execution_data"]
      level                  = var.logging_configuration["level"]

    }
  }

  dynamic "tracing_configuration" {
    for_each = length(keys(var.tracing_configuration)) > 0 ? [1] : []
    content {
      enabled = var.tracing_configuration["enabled"]
    }
  }

  type = var.type

  tags = var.tags
}
