variable "region" {
  description = "AWS Region to deploy resources"
  type        = string
}

variable "profile" {
  description = "AWS CLI profile to use"
  type        = string
  default     = "default"
}