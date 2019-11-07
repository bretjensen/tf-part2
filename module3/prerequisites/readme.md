Run init before plan and apply.

The user home path copies the aws creds to ../../.aws/credentials

```
terraform plan -var "user_home_path=../../" -out m3.plan
```
