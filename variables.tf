variable "name" {
    default     = "lambda-edge-nice-urls"
    description = "A name for the function."
    type        = string
}

variable "description" {
    default     = "Make URLs prettier."
    description = "The function description."
    type        = string
}

variable "runtime" {
    default     = "nodejs16.x"
    description = "The Lambda runtime (node)."
    type        = string
}

variable "tags" {
    default     = {}
    description = "A map of tags to apply to the resource."
    type        = map
}

variable "create_role" {
    default     = true
    description = "Toggles whether the module should create the IAM role."
    type        = bool
}

variable "role_name" {
    default     = "lambda-edge-nice-url-role"
    description = "Name of IAM role to use for Lambda Function."
    type        = string
}

variable "role_permissions_boundary" {
    default     = null
    description = "The ARN of the policy that is used to set the permissions boundary for the IAM role used by Lambda Function."
    type        = string
}
