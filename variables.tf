# Provider variables

variable "email" {
  description = "E-mail linked to the heroku account"
  type        = string
}

variable "heroku_api_key" {
  description = "The Heroku API Key"
  type        = string
}

# Application Variables

variable "application_name" {
  description = "The Application name"
  default     = "secondstation"
}

variable "application_region" {
  description = "The Region that the application will installed to"
  default     = "eu"
}

variable "application_config_vars" {
  description = "The internal variables"
  type        = object({})
  default = {
    MODE = "server"
  }
}

variable "application_buildpacks" {
  description = "The application buildpacks"
  type        = list(string)
  default = [
    "heroku/gradle"
  ]
}

# Build variables

variable "build_project_version" {
  description = "The project version to make new releases"
  default     = "v1"
}

variable "build_url" {
  description = "The release tar ball on github"
  default     = "https://github.com/ortolanph/aleajactarest/archive/"
}


# Formation variables

variable "formation_type" {
  description = "The formation type"
  default     = "web"
}

variable "formation_quantity" {
  description = "How many instances are required"
  default     = 1
}

variable "formation_size" {
  description = "The size of the formation"
  default     = "Standard-1x"
}
