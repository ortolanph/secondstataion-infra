variable "email" {
  description = "E-mail linked to the heroku account"
}

variable "heroku_api_key" {
  description = "The Heroku API Key"
}

variable "project_version" {
  description = "The project version to make new releases"
  default = "v1"
}
