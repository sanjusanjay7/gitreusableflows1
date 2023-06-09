terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
		}
	}

	backend "remote" {
		hostname = "app.terraform.io"
		organization = "SonixLabs"

		workspaces {
			name = "AWSBackup"
		}
	}
}

provider "aws" {
	region = "ap-south-1"
}