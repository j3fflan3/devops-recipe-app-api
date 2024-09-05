variable "tf_state_bucket" {
  description = "Name of s3 bucket in AWS for storing TF State"
  default     = "devops-recipe-app-tf-state"
}

variable "tf_state_lock_table" {
  description = "Name of the DynamoDB table for TF state locking"
  default     = "devops-recipe-app-api-tf-lock"
}

variable "project" {
  description = "Name of the project for tagging relevant resources"
  default     = "recipe-app-api"
}

variable "contact" {
  description = "Contact person for the project"
  default     = "jeff@jeffreyrobertlane.com"
}
