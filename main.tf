module "frontend" {
    source = "./modules/apps"
    instance_type = var.instance_type
    component = "frontend"
    ssh_user = var.ssh_user
    ssh_pass = var.ssh_pass
    env      = var.env
    zone_id  = var.zone_id
}

#
# module "backendtf"{
#     source = "./modules/app"
# }

# module "mysqltf"{
#     source = "./modules/app"
# }
