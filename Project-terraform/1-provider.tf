provider "google" {
    project = "devops-v4-443821"
    region ="us-central1"
}

terraform {
  backend "gcs" {
    bucket = "gke-project-alona"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}