resource "aws_elasticache_replication_group" "duo" {
  description                 = "Single shard primary with single read replica."
  subnet_group_name           = aws_elasticache_subnet_group.private_cache.name
  preferred_cache_cluster_azs = var.azs
  automatic_failover_enabled  = true
  replication_group_id        = "tf-rep-group-${var.name}"
  node_type                   = "cache.${var.node_size}"
  num_cache_clusters          = 2
  parameter_group_name        = var.pg_name
  port                        = var.port

  apply_immediately           = false
}


resource "aws_elasticache_subnet_group" "private_cache" {
  name        = "tf-redis-cache-${var.name}"
  subnet_ids  = var.cache_subnets
}
