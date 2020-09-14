source "docker" "dev" {
    image = "fedora"
    commit = true
      changes = [
      "WORKDIR /var/tmp",
      "LABEL version=1.0 maintainer=gpalmerjr@gmail.com"
    ]
}

build {
  sources = ["source.docker.dev"]
}