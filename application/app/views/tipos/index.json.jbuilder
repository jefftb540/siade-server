json.array!(@tipos) do |tipo|
  json.extract! tipo, :nome_tipo
  json.url tipo_url(tipo, format: :json)
end
