module "example_landing_zone_organization" {
  source    = "../../modules/landing_zone"
  root_path = path.module

  landing_zone_providers = {
    default = {
      account_id = "543332486884"
      region     = "us-east-1"
    }
  }

  landing_zone_components = {
    landing_zone_organization = "s3://terraform-aws-landing-zone/components/landing_zone_organization/default.tfvars"
  }

  terraform_backend = {
    backend = "local"
    path    = "/tmp/.terrahub/landing_zone"
  }
}
