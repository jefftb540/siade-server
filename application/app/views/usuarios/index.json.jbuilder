json.array!(@usuarios) do |usuario|
  json.extract! usuario, :nome, :codigo, :senha, :nivel
  json.url usuario_url(usuario, format: :json)
end
