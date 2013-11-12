json.array!(@visita) do |visitum|
  json.extract! visitum, :imovel_id, :hora, :atividade_id, :tratamento_id, :pesquisa_id, :pendencia, :data, :ciclo, :usuario_id
  json.url visitum_url(visitum, format: :json)
end
