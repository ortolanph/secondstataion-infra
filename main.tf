terraform {
  required_version = "0.12.29"
}

provider "heroku" {
  email   = var.email
  api_key = var.heroku_api_key
  version = "2.6"
  alias   = "second_station_app"
}

resource "heroku_app" "second_station" {
  name     = "secondstation"
  region   = "eu"
  provider = heroku.second_station_app

  config_vars = {
    MODE = "server"
  }

  buildpacks = [
    "heroku/gradle"
  ]
}

resource "heroku_build" "second_station_build" {
  app = heroku_app.second_station.id
  source = {
    url     = "https://github.com/ortolanph/aleajactarest/archive/${var.project_version}.tar.gz"
    version = var.project_version
  }
}

resource "heroku_formation" "second_station_formation" {
  app      = heroku_app.second_station.id
  type     = "web"
  quantity = 1
  size     = "Standard-1x"

  depends_on = [
    heroku_build.second_station_build
  ]
}
