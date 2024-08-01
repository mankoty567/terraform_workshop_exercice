resource "docker_image" "api_image" {
  name = "api-example"
  build {
    context    = var.api_path
    dockerfile = var.api_dockerfile_name
  }
  keep_locally = false
}

resource "docker_container" "api_container" {
  for_each = toset(["81", "82"])
  image    = docker_image.api_image.image_id
  name     = "example-api-${index(["81", "82"], each.value) + 1}"
  restart  = "always"
  start    = true
  networks_advanced {
    name    = docker_network.example_network.name
    aliases = ["web${index(["81", "82"], each.value) + 1}"]
  }

  ports {
    internal = 5000
    external = each.value
    protocol = "tcp"
  }
}
