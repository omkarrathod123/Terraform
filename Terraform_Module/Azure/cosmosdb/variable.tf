variable "name" {
  type = string
  default = "practic"
}
variable "location" {
  type = string
  default = "Central India"
  description = "Default location is Central India."
}
variable "offer_type" {
  type = string
  default = "Standard"
}
variable "capabilities" {
  type = map(string)
  default = {
    pipeline = "EnableAggregationPipeline"
    ttl = "mongoEnableDocLevelTTL"
    version = "MongoDBv3.4"
    enable = "EnableMongo"
  }
}
variable "kind" {
  type = string
  default = "MongoDB"
}