# Se crea una tabla de DynamoDB para ir recopilando la información del clima
# consultada en la API de OpenWeatherMap. Solo es necesario declarar la clave
# de partición y no todas las columnas a usar
resource "aws_dynamodb_table" "weather_db" {
  name         = var.table_name
  billing_mode = var.billing_mode
  hash_key     = var.partition_key

  attribute {
    name = var.partition_key
    type = "S"
  }

  tags = {
    Project = "TFM"
  }
}
