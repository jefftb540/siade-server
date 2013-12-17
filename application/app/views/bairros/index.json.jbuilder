json.array!(@bairros) do |bairro|
  json.extract! bairro, :cidade_id, :nome_bairro
  json.url bairro_url(bairro, format: :json)
end
