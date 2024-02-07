variable "create" {
  description = "Whether to create Step Function resource"
  type        = bool
  default     = true
}

################
# Step Function
################

variable "name" {
  description = "The name of the Step Function"
  type        = string
  default     = ""
}

variable "definition" {
  description = "The Amazon States Language definition of the Step Function"
  type        = string
  default     = ""
}

variable "role_arn" {
  description = "The Amazon Resource Name (ARN) of the IAM role to use for this Step Function"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Maps of tags to assign to the Step Function"
  type        = map(string)
  default     = {}
}

variable "type" {
  description = "Determines whether a Standard or Express state machine is created. The default is STANDARD. Valid Values: STANDARD | EXPRESS"
  type        = string
  default     = "STANDARD"

  validation {
    condition     = contains(["STANDARD", "EXPRESS"], upper(var.type))
    error_message = "Step Function type must be one of the following (STANDARD | EXPRESS)."
  }
}

variable "logging_configuration" {
  description = "Defines what execution history events are logged and where they are logged"
  type        = map(string)
  default     = {}
}

variable "tracing_configuration" {
  description = "Tracing configuration settings for AWS X-Ray."
  type        = map(string)
  default     = {}
}
