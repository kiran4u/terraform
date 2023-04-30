
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























