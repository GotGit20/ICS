# 1. Verify the domain
resource "aws_ses_domain_identity" "this" {
  domain = var.domain_name
}

# 2. DKIM configuration
resource "aws_ses_domain_dkim" "this" {
  domain = aws_ses_domain_identity.this.domain
}

# 3. Route 53 - Domain verification TXT record
resource "aws_route53_record" "verification" {
  zone_id = var.route53_zone_id
  name    = "_amazonses.${var.domain_name}"
  type    = "TXT"
  ttl     = 300
  records = [aws_ses_domain_identity.this.verification_token]
}

# 4. Route 53 - DKIM CNAME records
resource "aws_route53_record" "dkim" {
  count   = 3
  zone_id = var.route53_zone_id
  name    = "${aws_ses_domain_dkim.this.dkim_tokens[count.index]}._domainkey.${var.domain_name}"
  type    = "CNAME"
  ttl     = 300
  records = ["${aws_ses_domain_dkim.this.dkim_tokens[count.index]}.dkim.amazonses.com"]
}

# 5. (Optional) MAIL FROM setup
resource "aws_ses_domain_mail_from" "this" {
  domain           = var.domain_name
  mail_from_domain = "mail.${var.domain_name}"
  behavior_on_mx_failure = "UseDefaultValue"
}

# 6. Route 53 - MAIL FROM MX record
resource "aws_route53_record" "mail_from_mx" {
  zone_id = var.route53_zone_id
  name    = "mail.${var.domain_name}"
  type    = "MX"
  ttl     = 300
  records = ["10 feedback-smtp.${var.region}.amazonses.com"]
}

# 7. Route 53 - MAIL FROM SPF record
resource "aws_route53_record" "mail_from_spf" {
  zone_id = var.route53_zone_id
  name    = "mail.${var.domain_name}"
  type    = "TXT"
  ttl     = 300
  records = ["v=spf1 include:amazonses.com -all"]
}