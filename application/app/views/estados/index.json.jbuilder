json.array!(@estados) do |estado|
  json.extract! estado, :nome_estado, :sigla
  json.url estado_url(estado, format: :json)
end
