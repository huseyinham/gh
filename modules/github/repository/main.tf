resource "github_repository" "generic" {
  name = var.name

  visibility = var.visibility

  has_issues      = var.issues_enabled
  has_discussions = var.discussions_enabled

  has_projects = var.projects_enabled
  has_wiki     = var.wiki_enabled
}