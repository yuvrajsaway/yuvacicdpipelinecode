module "resource_group" {
  source                  = "../../Modules/Azure_Resource_Group"
  for_each                = var.resource-group
  resource-group          = each.value.name
  resource-group-location = each.value.location
}

module "storage_account" {
  source                   = "../../Modules/Storage_Account"
  depends_on               = [module.resource_group]
  for_each                 = var.storage_account
  storage-account          = each.value.name
  resource-group           = each.value.resource-group
  storage-account-location = each.value.location
}

