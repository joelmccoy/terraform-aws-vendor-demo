module "label" {
  source      = "./modules/cloudposse/label/null"
  namespace   = "CloudPosse"
  environment = "UAT"
  stage       = "build"
  name        = "Winston Churchroom"
  attributes  = ["fire", "water", "earth", "air"]

  label_order = ["name", "environment", "stage", "attributes"]

  tags = {
    "City"        = "Dublin"
    "Environment" = "Private"
  }
}

output "label" {
  value = {
    id         = module.label.id
    name       = module.label.name
    namespace  = module.label.namespace
    stage      = module.label.stage
    attributes = module.label.attributes
    delimiter  = module.label.delimiter
  }
}

output "label_tags" {
  value = module.label.tags
}

output "label_context" {
  value = module.label.context
}

output "label_normalized_context" {
  value = module.label.normalized_context
}
