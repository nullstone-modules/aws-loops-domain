data "ns_connection" "domain" {
  name = "domain"
  type = "domain/aws"
}

locals {
  domain_zone_id = data.ns_connection.domain.outputs.zone_id
}
