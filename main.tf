module "project" {
  source  = "app.terraform.io/ryanfmain/project/tfe"
  version = "1.0.1"
  # insert required variables here
  for_each = local.projects
  name = each.value.name
  organization_name = each.value.organization_name
  description = each.value.description

}


module "workspaces" {
  source  = "app.terraform.io/ryanfmain/workspaces/tfe"
  version = "1.0.0"
  # insert required variables here
  for_each = local.workspaces

  name = each.key
  project_id = each.value.project_id
  description = each.value.description
  organization_name = each.value.organization_name
  execution_mode = each.value.execution_mode
  vcs_repo = {
    github_app_installation_id = data.tfe_github_app_installation.app.id
    identifier = each.value.vcs_repo_identifier
  }
}