# Terraform Notes

Terraform is popular IaC(Infrastructure as a Code) tool.

* **Version Control:** <br/>

Since it is code, we can maintain in git to version control. We can completely maintain the history of infra and collaboration is easy.

* **Consistent Infra:** <br/>

Often we face the problem of different configurations in different environments like DEV, QA, PROD, etc. using terraform we can create similar infra in multiple environments with more reliability.

* **Automated Infra CRUD:** <br/>

Using terraform we can create entire infra in minutes reducing the human errors.
Updating infra using terraform is also easy.
Using Terraform we can delete infra.

* **Inventory Management:** <br/>

If we create infra manually it is very tough to maintain the inventory of resources in diff regions. But by seeing terraform you can easily tell the resources you are using in different regions.


* **Cost Management:** <br/>

When you need infra yoou can create in minutes. When you don't need it you can delete in minutes. So you can save cost.

* **Automatic dependency management:** <br/>

Terraform can understand the dependency of resources. It can tell us the dependency clearly.

* **Modular Infra:** <br/>
Code reuse. We can develop our own modules or use the open source modules to reuse the infra code.Instead of spending more time to create the infra from scratch we can reuse modules.


#### Terraform Commands

* First command is to initialize the terraform, at this stage terraform downloads the provider into .terraform folder.

```
terraform init
```

* Next we need to run plan command, at this stage terraform compares the infra between declared and existing. This is only plan terraform will not create

```
terraform plan
```

* Next we need to apply the infra, at this stage terraform create the infra with approval.

```
terraform apply
```









