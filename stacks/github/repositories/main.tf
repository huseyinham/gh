module "voxsmart_service_api" {
  source = "../../../modules/github/repository"

  name = "${local.product_name}-api"
}

module "voxsmart_service_ui" {
  source = "../../../modules/github/repository"

  name = "${local.product_name}-ui"
}

module "voxsmart_service_sdk" {
  source = "../../../modules/github/repository"

  name       = "${local.product_name}-sdk"
  visibility = "public"
}
