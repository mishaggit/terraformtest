variable "project_id" {
  description = "The project ID to host the cluster in"
  default = "myproject-7777777"
}
variable "region" {
  description = "The region to host the cluster in"
  default     = "europe-west1"
}
variable "zone" {
  description = "The region to host the cluster in"
  default     = "europe-west1-b"
}

variable "account_id" {
  description = "account_id"
  default     = "testaccountid"
}

variable "display_name" {
  description = "display_name"
  default     = "Test_display_name"
}