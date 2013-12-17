json.array!(@imovels) do |imovel|
  json.extract! imovel, :lado_id, :tipo_id, :habitantes
  json.url imovel_url(imovel, format: :json)
end
