# Second Station Infrastructure

Installs the Second Station applica, aka [AleaJactaRest](https://github.com/ortolanph/aleajactarest), to heroku using Terraform scripts.

## Requirements

| Name | Version |
|------|---------|
| terraform | 0.12.29 |
| heroku | 2.6 |

## Providers

| Name | Version |
|------|---------|
| heroku | 2.6 |
| heroku.second\_station\_app | 2.6 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| email | E-mail linked to the heroku account | `any` | n/a | yes |
| heroku\_api\_key | The Heroku API Key | `any` | n/a | yes |
| project\_version | The project version to make new releases | `string` | `"v1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| project\_url | The project URL where it can be accessible |

