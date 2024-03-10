resource "github_team" "generic" {
  name                      = var.name
  description               = var.description
  privacy                   = var.privacy
  parent_team_id            = var.parent_team_id
  create_default_maintainer = var.create_default_maintainer
}