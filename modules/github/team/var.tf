# Mandatory Values
variable "name" {}

# Optional Values
variable "description" {
  default = ""
}

variable "privacy" {
  default = "secret"
}

variable "parent_team_id" {
  default = ""
}

variable "create_default_maintainer" {
  default = false
}