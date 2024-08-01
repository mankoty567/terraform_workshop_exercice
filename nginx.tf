resource "docker_image" "proxy_image" {
  name = "nginx-example"
  build {
    context    = var.proxy_path
    dockerfile = var.proxy_dockerfile_name
  }
  keep_locally = false
}

resource "docker_container" "proxy_container" {
  image   = docker_image.proxy_image.image_id
  name    = "nginx"
  restart = "always"
  start   = true

  networks_advanced {
    name = docker_network.example_network.name
  }

  ports {
    internal = 80
    external = 80
    protocol = "tcp"
  }
}
