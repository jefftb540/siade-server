json.array!(@ruas) do |rua|
  json.extract! rua, :nome_rua
  json.url rua_url(rua, format: :json)
end
