data "terraform_remote_state" "first" {
  backend = "remote"

  config = {
    hostname     = "spacelift.io" # 
    organization = "onevest"    # 

    workspaces = {
      name = "first"       # 
    }
  }
}

output "ultimate_answer" {
  value = data.terraform_remote_state.deepthought.outputs.stephen_temp_arn
}
