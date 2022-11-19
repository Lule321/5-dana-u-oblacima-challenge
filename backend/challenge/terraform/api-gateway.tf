resource "aws_api_gateway_deployment" "s7kj7g_jy6idpvpn3" {
  rest_api_id = aws_api_gateway_rest_api.jy6idpvpn3.id
}

resource "aws_api_gateway_deployment" "sf2unk_jy6idpvpn3" {
  rest_api_id = aws_api_gateway_rest_api.jy6idpvpn3.id
}

resource "aws_api_gateway_resource" "jy6idpvpn3_29ff79" {
  parent_id   = "vo34lvxvt4"
  path_part   = "order"
  rest_api_id = aws_api_gateway_rest_api.jy6idpvpn3.id
}

resource "aws_api_gateway_resource" "jy6idpvpn3_5gjh38" {
  parent_id   = "vo34lvxvt4"
  path_part   = "orderbook"
  rest_api_id = aws_api_gateway_rest_api.jy6idpvpn3.id
}

resource "aws_api_gateway_resource" "jy6idpvpn3_jfvuai" {
  parent_id   = "5gjh38"
  path_part   = "{currencyPair}"
  rest_api_id = aws_api_gateway_rest_api.jy6idpvpn3.id
}

resource "aws_api_gateway_resource" "jy6idpvpn3_oocww4" {
  parent_id   = "29ff79"
  path_part   = "all"
  rest_api_id = aws_api_gateway_rest_api.jy6idpvpn3.id
}

resource "aws_api_gateway_resource" "jy6idpvpn3_vo34lvxvt4" {
  parent_id   = ""
  path_part   = ""
  rest_api_id = aws_api_gateway_rest_api.jy6idpvpn3.id
}

resource "aws_api_gateway_resource" "jy6idpvpn3_wug772" {
  parent_id   = "29ff79"
  path_part   = "{id}"
  rest_api_id = aws_api_gateway_rest_api.jy6idpvpn3.id
}

resource "aws_api_gateway_resource" "jy6idpvpn3_yz5212" {
  parent_id   = "vo34lvxvt4"
  path_part   = "user"
  rest_api_id = aws_api_gateway_rest_api.jy6idpvpn3.id
}

resource "aws_api_gateway_rest_api" "jy6idpvpn3" {
  api_key_source = "HEADER"
  endpoint_configuration {
    types = ["REGIONAL"]
  }

  minimum_compression_size = -1
  name                     = "OpenAPI definition"
}

resource "aws_api_gateway_stage" "jy6idpvpn3_prod" {
  deployment_id = aws_api_gateway_deployment.sf2unk_jy6idpvpn3.id
  rest_api_id   = aws_api_gateway_rest_api.jy6idpvpn3.id
  stage_name    = "prod"
}