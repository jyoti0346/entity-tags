data "newrelic_entity" "test-entity" {
  name   = "DESKTOP-PNVDQC8"
  type   = "Host"
  domain = "Infra"
}

resource "newrelic_entity_tags" "test-tag" {
    # for_each = var.test-tag
  guid = data.newrelic_entity.test-entity.guid

#   tag {
#     key    = each.value.key1
#     values = each.value.value1
#   }

#   tag {
#     key    = each.value.key2
#     values = each.value.value2
#   }
# }
 dynamic "tag" {
    for_each = var.test-tag
    content {
      key    = tag.value.key
      values = tag.value.values
    }
 }
}