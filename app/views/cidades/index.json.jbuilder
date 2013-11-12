json.array!(@cidades) do |cidade|
  json.extract! cidade, :estado_id, :nome_cidade
  json.url cidade_url(cidade, format: :json)
end
