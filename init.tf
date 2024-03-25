data "terraform_remote_state" "first" {
  backend = "remote"

  config = {
    hostname     = "app.spacelift.io" # 
    organization = "onevest"    # 

    workspaces = {
      name = "first"       # 
    }
  }
}

# comment
variable "region" {
  type = string
}

output "ultimate_answer" {
  value = data.terraform_remote_state.first.outputs.stephen_temp_arn
}

