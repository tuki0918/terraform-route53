provider "aws" {}

resource "aws_route53_record" "xor-pics-A" {
    zone_id = "Z2S7HWILI8C555"
    name    = "xor.pics"
    type    = "A"
    records = ["133.242.136.158"]
    ttl     = "172800"
}

resource "aws_route53_record" "xor-pics-NS" {
    zone_id = "Z2S7HWILI8C555"
    name    = "xor.pics"
    type    = "NS"
    records = ["ns-1123.awsdns-12.org.", "ns-11.awsdns-01.com.", "ns-604.awsdns-11.net.", "ns-1659.awsdns-15.co.uk."]
    ttl     = "172800"
}

resource "aws_route53_record" "xor-pics-SOA" {
    zone_id = "Z2S7HWILI8C555"
    name    = "xor.pics"
    type    = "SOA"
    records = ["ns-604.awsdns-11.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"
}

resource "aws_route53_record" "xor-pics-TXT" {
    zone_id = "Z2S7HWILI8C555"
    name    = "xor.pics"
    type    = "TXT"
    records = ["v=spf1 a mx ~all"]
    ttl     = "172800"
}
