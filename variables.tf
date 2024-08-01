# -------------------------------------
#           Path configurations
# -------------------------------------

variable "api_path" {
  default     = "./web"
  description = "Le chemin d'accès relatif jusqu'au module d'api."
  nullable    = false
  type        = string
}

variable "proxy_path" {
  default     = "./nginx"
  description = "Le chemin d'accès relatif jusqu'au module nginx."
  nullable    = false
  type        = string
}

# -------------------------------------
#        Dockerfile configurations
# -------------------------------------

variable "api_dockerfile_name" {
  default     = "Dockerfile"
  description = "Le nom de votre dockerfile pour l'api."
  nullable    = false
  type        = string
}

variable "proxy_dockerfile_name" {
  default     = "Dockerfile"
  description = "Le nom de votre dockerfile pour votre proxy."
  nullable    = false
  type        = string
}
