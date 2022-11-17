module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"

  function_name  = var.name
  description    = var.description
  handler        = "index.handler"
  runtime        = var.runtime
  lambda_at_edge = true

  create_package         = false
  local_existing_package = "function.zip"

  attach_dead_letter_policy = false
  attach_network_policy     = false
  attach_tracing_policy     = false
  attach_async_event_policy = false

  create_role               = var.create_role # to control creation of the IAM role and policies required for Lambda Function
  role_permissions_boundary = var.role_permissions_boundary
  role_name                 = var.role_name

  tags = var.tags
}
