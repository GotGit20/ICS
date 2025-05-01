variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "ingress_rules" {
  description = "List of ingress rules"
  type = list(object({
    cidr_blocks = list(string)
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    self        = bool
  }))
}

variable "egress_rules" {
  description = "List of egress rules"
  type = list(object({
    cidr_blocks = list(string)
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    self        = bool
  }))
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}