# Important Notes

I completed this lab on 9/13/22 in order to act as a useful reference for future practice.

My implementation included some slight differences compared to what you might normally implement for the lab, so I wanted to detail them here.

## Terraform State

The lab notes [here](https://github.com/DevOpsTestLab/DevOpsNinjas#instructions) that it is recommended to store the terraform state for the infrastructure in an S3 bucket, although it is not necessary.
I decided to do so for a high-quality lab completion.

However, instead of creating an entire S3 bucket configured from scratch to do so, I used an S3 bucket that pre-existed.
I have previously created an S3 bucket called "revature-terraform" for storing my terraform state for other projects.
That bucket followed all of the general best-practices regarding securing your state, such as bucket versioning, encryption, locking the statefile, etc.

While completing your lab, you won't have access to a pre-existing bucket to store your state in, so you will have to construct it yourself.
Terraform has documentation regarding this [here](https://www.terraform.io/language/settings/backends/s3).
Additionally, a fairly recent video tutorial regarding setting this up can be found [here](https://www.youtube.com/watch?v=v3M_PJAcpzU).
NOTE: I haven't watched the video in detail, so I make no promises to exactly how useful it is, but I have made a cursory glance-through and it seems alright.

## Full changelog

I have opened a Pull Request on the repository that includes every single change I made to the infrastructure, with comments explaining what I was doing and why.
This can be found and reviewed [here](https://github.com/IkenoXamos/aws-lab-infra/pull/1/files).