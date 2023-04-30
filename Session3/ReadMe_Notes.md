
State, remote state and variables:
==================================

Project Name: timing


Problems:
---------
Infra Team, Multiple Members

Every person will contribute some work , we use git for version control.

Engineer-1
----------
He cloned repo

Engineer-2
--------
He cloned repo

Engineer-1
----------
He applied terraform

Engineer-2
----------
He applied terraform

In this scenario, for each engineer the terraform.tfstate will be created and instances will be duplicated/created once again.

So we have to maintain a central place where terraform can understand the Actual Infra
---------------------------------------------------------------------------------------

That is nothing but maintaining the Remote state.

mulitple persons should not change the infra at a time, only one change at a time is allowed. --> lock it using dynamodb

Duplication and errors in terraform will be removed.

Locking: terraform.lock.hcl

Similarly when we will lock the S3 bucket using dynamodb it will not allow another person to lock at the same time.



Variables
-----------
1) If you are repeating the values in multiple places, then you need to do the change in all places if there is a moification.

2) If we use variable change at single place reflect everywhere.
3) Keeping varaibles aside will save us from accidental changes.

variables.tf file we eed to keep all variables
--------------------------------------------
string
map
number = integer
boolean = true/false

Pass through command line:
--------------------------
terraform apply -var "cidr=10.0.0.0/16"

variables.tf is to declare variable. You can keep default values also here. But not recomended.
terraform.tfvars to provide default values to variables.
Also you can always override values from command line.

























