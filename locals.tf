locals {

    projects = {
            controller = {
              name = "controller"
              description = "tfe project automate"
              organization_name = var.organization_name
            }
            ryanfdev = {
              name = "ryanfdev"
              description = "ryanfdev site"
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

        tfe-github-automate = {
            description = "Automation workspace for GitHub Repos"
            execution_mode = "remote"
            project_id = module.project["controller"].project_id
            vcs_repo_identifier = "${var.github_organization_name}/tfe-github-automate"
            organization_name = var.organization_name

          }

        tfe-aws-vpc-automate = {
            description = "Automation workspace for AWS VPCs"
            execution_mode = "remote"
            project_id = module.project["controller"].project_id
            vcs_repo_identifier = "${var.github_organization_name}/tfe-aws-vpc-automate"
            organization_name = var.organization_name

          }

        tfe-aws-lb-automate = {
            description = "Automation workspace for AWS Loadbalancers"
            execution_mode = "remote"
            project_id = module.project["controller"].project_id
            vcs_repo_identifier = "${var.github_organization_name}/tfe-aws-lb-automate"
            organization_name = var.organization_name

          }

        ryanfdev = {
            description = "Automation workspace for AWS Loadbalancers"
            execution_mode = "remote"
            project_id = module.project["ryanfdev"].project_id
            vcs_repo_identifier = "${var.github_organization_name}/ryanfdev"
            organization_name = var.organization_name

          }
        ryanfdev-tf = {
            description = "Automation workspace for AWS Loadbalancers"
            execution_mode = "remote"
            project_id = module.project["ryanfdev"].project_id
            vcs_repo_identifier = "${var.github_organization_name}/ryanfdev-tf"
            organization_name = var.organization_name

          }
    }


}