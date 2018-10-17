module "kubes" {
  source  = "git::https://github.com/poseidon/typhoon//google-cloud/container-linux/kubernetes"
  version = "1.11.3"

  providers = {
    google = "google.default"
    local    = "local.default"
    null     = "null.default"
    template = "template.default"
    tls      = "tls.default"
  }

  # Google Cloud
  cluster_name  = "kubes-la"
  region        = "us-west2"
  dns_zone      = "ttest.info"
  dns_zone_name = "ttest-public"

  # configuration
  ssh_authorized_key = "${pathexpand("~/.ssh/master")}"
  asset_dir          = "secrets/clusters/kubes-la"

  # optional
  worker_count = 3
}
