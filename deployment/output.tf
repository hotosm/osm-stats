output "redis_url" {
  value = "redis://:${urlencode(azurerm_redis_cache.osm-stats.primary_access_key)}@${azurerm_redis_cache.osm-stats.hostname}:${azurerm_redis_cache.osm-stats.port}/1"
}

output "database_url" {
  value = "postgresql://${var.db_user}%40${var.db_server_name}:${random_string.db_password.result}@${azurerm_postgresql_server.osm-stats.fqdn}/${var.db_name}"
}
