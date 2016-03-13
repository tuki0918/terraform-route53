provider "aws" {}

resource "aws_route53_record" "iideacraft-com-A" {
    zone_id = "ZL301KJ4U89DL"
    name    = "iideacraft.com"
    type    = "A"
    records = ["133.242.136.158"]
    ttl     = "3600"

}

resource "aws_route53_record" "iideacraft-com-NS" {
    zone_id = "ZL301KJ4U89DL"
    name    = "iideacraft.com"
    type    = "NS"
    records = ["ns-1847.awsdns-38.co.uk.", "ns-718.awsdns-25.net.", "ns-102.awsdns-12.com.", "ns-1516.awsdns-61.org."]
    ttl     = "172800"

}

resource "aws_route53_record" "iideacraft-com-SOA" {
    zone_id = "ZL301KJ4U89DL"
    name    = "iideacraft.com"
    type    = "SOA"
    records = ["ns-1847.awsdns-38.co.uk. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
    ttl     = "900"

}

resource "aws_route53_record" "iideacraft-com-TXT" {
    zone_id = "ZL301KJ4U89DL"
    name    = "iideacraft.com"
    type    = "TXT"
    records = ["v=spf1 a mx ~all]
    ttl     = "300"

}

resource "aws_route53_record" "slim-iideacraft-com-A" {
    zone_id = "ZL301KJ4U89DL"
    name    = "slim.iideacraft.com"
    type    = "A"
    records = ["133.242.136.158"]
    ttl     = "86400"

}

resource "aws_route53_record" "www-iideacraft-com-A" {
    zone_id = "ZL301KJ4U89DL"
    name    = "www.iideacraft.com"
    type    = "A"

    alias {
        name    = "iideacraft.com"
        zone_id = "ZL301KJ4U89DL"
        evaluate_target_health = false
    }
}
