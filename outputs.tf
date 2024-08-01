output "database-infos" {
  value       = "${docker_container.database_container.name} OK : build avec l'image ${docker_container.database_container.image}. Ports exposés : ${docker_container.database_container.ports[0].external}:${docker_container.database_container.ports[0].internal}"
  description = "Toutes les informations nécessaires pour se servir de la base de données"
}

output "api-1-infos" {
  value       = "${docker_container.api_container.81.name} OK : build avec l'image ${docker_container.api_container.81.image}. Ports exposés : ${docker_container.api_container.81.ports[0].external}:${docker_container.api_container.81.ports[0].internal}"
  description = "Toutes les informations nécessaires pour se servir de la base de données"
}

output "api-2-infos" {
  value       = "${docker_container.api_container.82.name} OK : build avec l'image ${docker_container.api_container.82.image}. Ports exposés : ${docker_container.api_container.82.ports[0].external}:${docker_container.api_container.82.ports[0].internal}"
  description = "Toutes les informations nécessaires pour se servir de la base de données"
}

output "proxy-infos" {
  value       = "${docker_container.proxy_container.name} OK : build avec l'image ${docker_container.proxy_container.image}. Ports exposés : ${docker_container.proxy_container.ports[0].external}:${docker_container.proxy_container.ports[0].internal}"
  description = "Toutes les informations nécessaires pour se servir de la base de données"
}
