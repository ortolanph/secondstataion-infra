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
