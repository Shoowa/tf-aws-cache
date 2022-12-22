output "group_arn" {
  value = aws_elasticache_replication_group.duo.arn
}


output "group_redis_version" {
  value = aws_elasticache_replication_group.duo.engine_version_actual
}


output "group_cluster_enabled" {
  value = aws_elasticache_replication_group.duo.cluster_enabled
}


output "group_id" {
  value = aws_elasticache_replication_group.duo.id
}


output "group_nodes" {
  value = aws_elasticache_replication_group.duo.member_clusters
}


output "group_config_address" {
  value = aws_elasticache_replication_group.duo.configuration_endpoint_address
}


output "group_primary_address" {
  value = aws_elasticache_replication_group.duo.primary_endpoint_address
}


output "group_reader_address" {
  value = aws_elasticache_replication_group.duo.reader_endpoint_address
}


output "group_tags" {
  value = aws_elasticache_replication_group.duo.tags_all
}


output "subnet_name" {
  value = aws_elasticache_subnet_group.private_cache.name
}


output "subnet_ids" {
  value = aws_elasticache_subnet_group.private_cache.subnet_ids
}


output "subnet_tags" {
  value = aws_elasticache_subnet_group.private_cache.tags_all
}
