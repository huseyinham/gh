# Frontend Team & Permissions
module "frontend" {
  source = "../../../modules/github/team"
  name   = "frontend"
}

resource "github_team_repository" "api_read_only_frontend" {
  team_id    = module.frontend.id
  repository = "${local.product_name}-api"
  permission = "pull"
}

resource "github_team_repository" "ui_owners_frontend" {
  team_id    = module.frontend.id
  repository = "${local.product_name}-ui"
  permission = "admin"
}

resource "github_team_repository" "sdk_push_frontend" {
  team_id    = module.frontend.id
  repository = "${local.product_name}-sdk"
  permission = "push"
}

# Backend Team & Permissions
module "backend" {
  source = "../../../modules/github/team"
  name   = "backend"
}

resource "github_team_repository" "api_owners_backend" {
  team_id    = module.backend.id
  repository = "${local.product_name}-api"
  permission = "admin"
}

resource "github_team_repository" "sdk_push_backend" {
  team_id    = module.backend.id
  repository = "${local.product_name}-sdk"
  permission = "push"
}
