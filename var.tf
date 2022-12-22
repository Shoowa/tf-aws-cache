variable "name" {
  type        = string
  description = "Name of the Redis cluster"
  default     = "primary"
}


variable "azs" {
  type        = list
  description = "Home of the Redis instance"
}


variable "pg_name" {
  type        = string
  description = "Name of the parameter group profile for Redis"
  default     = "default.redis7"
}


variable "node_size" {
  type        = string
  description = "EC2 Instance classification"
  default     = "t3.medium"
}


variable "port" {
  type        = number
  description = "Port to call Redis"
  default     = 6379
}


variable "cache_subnets" {
  type        = list
  description = "Eligible subnets to hold a cache"
}
