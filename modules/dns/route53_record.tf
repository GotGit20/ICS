resource "aws_route53_record" "tfer--Z05801763B81TE4WSRN6U_vicertify-002E-us-002E-_NS_" {
  multivalue_answer_routing_policy = "false"
  name                             = "vicertify.us"
  records                          = ["ns-1103.awsdns-09.org.", "ns-1641.awsdns-13.co.uk.", "ns-359.awsdns-44.com.", "ns-734.awsdns-27.net."]
  ttl                              = "172800"
  type                             = "NS"
  zone_id                          = "${aws_route53_zone.tfer--Z05801763B81TE4WSRN6U_vicertify-002E-us.zone_id}"
}

resource "aws_route53_record" "tfer--Z05801763B81TE4WSRN6U_vicertify-002E-us-002E-_SOA_" {
  multivalue_answer_routing_policy = "false"
  name                             = "vicertify.us"
  records                          = ["ns-1641.awsdns-13.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
  ttl                              = "900"
  type                             = "SOA"
  zone_id                          = "${aws_route53_zone.tfer--Z05801763B81TE4WSRN6U_vicertify-002E-us.zone_id}"
}

resource "aws_route53_record" "tfer--Z05801763B81TE4WSRN6U_www-002E-vicertify-002E-us-002E-_A_" {
  multivalue_answer_routing_policy = "false"
  name                             = "www.vicertify.us"
  records                          = ["52.204.191.25"]
  ttl                              = "300"
  type                             = "A"
  zone_id                          = "${aws_route53_zone.tfer--Z05801763B81TE4WSRN6U_vicertify-002E-us.zone_id}"
}
