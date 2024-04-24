# module "dashboard1" {
#   source = "../dashboard" 
  
# }
module "dashboard" {
  source = "../dashboard"
  dashboard1 = var.dashboard1
  
}