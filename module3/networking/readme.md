Run init, plan and apply in the prerequisites before trying instantiate the backend. We need to set up the users, roles and policies before trying to set up state lock.

```
terraform init --backend-config="dynamodb_table=ddt-tfstatelock" --backend-config="bucket=ddt-brett-networking" --backend-config="profile=marymoe"
```
