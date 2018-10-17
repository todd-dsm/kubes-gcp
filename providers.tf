provider "google" {
  version = "1.6"
  alias   = "default"

  credentials = "${file("~/.config/gcloud/terraform.json")}"
  project     = "typhoon-213721"
  region      = "us-west2"
}

provider "local" {
  version = "~> 1.0"
  alias   = "default"
}

provider "null" {
  version = "~> 1.0"
  alias   = "default"
}

provider "template" {
  version = "~> 1.0"
  alias   = "default"
}

provider "tls" {
  version = "~> 1.0"
  alias   = "default"
}
