resource "docker_image" "database_image" {
  name         = "redis:latest"
  keep_locally = false
}

resource "docker_container" "database_container" {
  name    = "example-db"
  image   = docker_image.database_image.image_id
  restart = "always"
  networks_advanced {
    name    = docker_network.example_network.name
    aliases = ["redis"]
  }

  ports {
    internal = 6379
    external = 6379
    protocol = "tcp"
  }
  start = true
}
