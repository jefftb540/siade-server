json.array!(@tratamentos) do |tratamento|
  json.extract! tratamento, :eliminados, :imovel_tratado, :tipo_larvicida, :quantidade_larvicida, :quantidade_deposito_tratado
  json.url tratamento_url(tratamento, format: :json)
end
