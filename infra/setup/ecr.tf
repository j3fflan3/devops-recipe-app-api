###########################################################################
# Create ECR (Elastic Container Registry) repos for storing Docker Images #
###########################################################################

resource "aws_ecr_repository" "app" {
  name                 = "recipe-app-api-app"
  image_tag_mutability = "MUTABLE" # allows you to change the "latest" tag.
  force_delete         = true

  ## Security mechanism to scan the images for vulnerability.  Disabling for now.
  image_scanning_configuration {
    # NOTE: Update to true for actual deployments.
    scan_on_push = false
  }

}

resource "aws_ecr_repository" "proxy" {
  name                 = "recipe-app-api-proxy"
  image_tag_mutability = "MUTABLE" # allows you to change the "latest" tag.
  force_delete         = true

  ## Security mechanism to scan the images for vulnerability.  Disabling for now.
  image_scanning_configuration {
    # NOTE: Update to true for actual deployments.
    scan_on_push = false
  }

}
