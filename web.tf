resource "docker_image" "web_image" {
  # Add your instructions here
}

resource "docker_container" "web_container" {
  for_each = toset(["81", "82"])

  name = "web-${index(["81", "82"], each.value) + 1}"
  # Add your instructions here
}
