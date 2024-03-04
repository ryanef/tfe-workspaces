locals {

    projects = {
            main = {
              name = "controller"
              description = "tfe project automate"
              organization_name = var.organization_name
            }
      }

    workspaces = {
      
        tfe-workspaces  = {
            description = "automate tfe workspaces"
            execution_mode = "remote"
            organization_name = var.organization_name
            project_id = module.project["controller"].project_id
            vcs_repo_identifier = "${var.github_organization_name}/tfe-workspaces"
        }


        # tfe-github = {

        #     description = "Automation workspace for GitHub Repos"
        #     execution_mode = "remote"
        #     project_id = module.project["main"].project_id
        #     vcs_repo_identifier = "${var.github_organization_name}/tfe-github-automate"
        #     organization_name = var.organization_name

        #   }

        # terraform-aws-vpc = {
        #     description = "Automation workspace for aws vpc"
        #     execution_mode = "remote"
        #     project_id = module.project["main"].project_id
        #     vcs_repo_identifier = "${var.github_organization_name}/terraform-aws-vpc"
        #     organization_name = var.organization_name
        #   }

    }


}