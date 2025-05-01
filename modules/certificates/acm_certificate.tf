resource "aws_acm_certificate" "tfer--aebd6b4d-f50c-42b7-a4b5-93aac0d1cb83_vicertify-002E-us" {
  domain_name   = "vicertify.us"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  subject_alternative_names = ["vicertify.us"]
  validation_method         = "DNS"
}
