json.array!(@lados) do |lado|
  json.extract! lado, :quadra_id, :rua_id, :referencia
  json.url lado_url(lado, format: :json)
end
