json.array!(@atividades) do |atividade|
  json.extract! atividade, :descricao
  json.url atividade_url(atividade, format: :json)
end
