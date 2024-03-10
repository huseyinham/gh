# Frontend
resource "github_team_members" "frontend" {
  team_id = module.frontend.id

  dynamic "members" {
    for_each = local.frontend_maintainers
    content {
      username = members.value
      role     = "maintainer"
    }
  }

  dynamic "members" {
    for_each = local.frontend_members
    content {
      username = members.value
      role     = "member"
    }
  }
}

# Backend
resource "github_team_members" "backend" {
  team_id = module.backend.id

  dynamic "members" {
    for_each = local.backend_maintainers
    content {
      username = members.value
      role     = "maintainer"
    }
  }

  dynamic "members" {
    for_each = local.backend_members
    content {
      username = members.value
      role     = "member"
    }
  }
}