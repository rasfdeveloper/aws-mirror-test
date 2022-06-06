terraform {
    backend "remote" {
        organization = "rasfdeveloper"

        workspaces {
        name = "rasfdeveloper-workspace"
        }
    }
}

module "ec2" {
    source        = "./modules/ec2"
    ami           = var.ami
    instance_type = var.instance_type
    sg_group      = var.sg_group
}