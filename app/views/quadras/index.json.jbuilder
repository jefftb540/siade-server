json.array!(@quadras) do |quadra|
  json.extract! quadra, :bairro_id, :total_imoveis, :total_c, :total_r, :total_pe, :total_tb, :total_o
  json.url quadra_url(quadra, format: :json)
end
