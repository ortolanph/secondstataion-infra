# Second Station Infrastructure

Installs the Second Station applica, aka [AleaJactaRest](https://github.com/ortolanph/aleajactarest), to heroku using Terraform scripts.

## Instructions

### Secrets

Create a `secret.auto.tfvars` file to store the e-mail associated with Heroku account and the API Key. Here's a sample:

```hcl-terraform
heroku_api_key = "APIKEYAPIKEYAPIKEYAPIKEYAPIKEYAPIKEY"
email          = "mail@server.com"
```

### Configure

On the `main.tf` file, modify the resources:

 - `heroku_app` - if you want to modify the name, region, the confguration variables or the buildpacks
 - `heroku_build` - if you want a different project to be deployed, with a different version
 - `heroku_formation` - If you want to make your application run on a web and put more works to your application

### Run commands

In a shell, run the `terraform init` command in order to terraform imports the heroku plugins.

If everything runs ok, run the `terraform plan` command to visualize what will be done, and then `terraform apply` to apply the modifications.

If you want to dispose all your modifications, run `terraform destroy` and everything will be destroyed on heroku side.

## Requirements

| Name | Version |
|------|---------|
| terraform | 0.12.29 |
| heroku | 2.6 |

## Providers

| Name | Version |
|------|---------|
| heroku.second\_station\_app | 2.6 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| application\_buildpacks | The application buildpacks | `list(string)` | <pre>[<br>  "heroku/gradle"<br>]</pre> | no |
| application\_config\_vars | The internal variables | `object({})` | <pre>{<br>  "MODE": "server"<br>}</pre> | no |
| application\_name | The Application name | `string` | `"secondstation"` | no |
| application\_region | The Region that the application will installed to | `string` | `"eu"` | no |
| build\_project\_version | The project version to make new releases | `string` | `"v1"` | no |
| build\_url | The release tar ball on github | `string` | `"https://github.com/ortolanph/aleajactarest/archive/"` | no |
| email | E-mail linked to the heroku account | `string` | n/a | yes |
| formation\_quantity | How many instances are required | `number` | `1` | no |
| formation\_size | The size of the formation | `string` | `"Standard-1x"` | no |
| formation\_type | The formation type | `string` | `"web"` | no |
| heroku\_api\_key | The Heroku API Key | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| project\_url | n/a |

## License

```
MIT License

Copyright (c) 2020 Paulo Ortolan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
