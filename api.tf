resource "docker_image" "api_image" {
  # Add your instructions here
}

resource "docker_container" "api_container" {
  for_each = toset(["81", "82"])
  # Add your instructions here
}
