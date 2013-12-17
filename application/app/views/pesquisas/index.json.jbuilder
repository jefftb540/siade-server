json.array!(@pesquisas) do |pesquisa|
  json.extract! pesquisa, :a1, :a2, :b, :c, :d1, :d2, :e, :imovel_especionado, :n_amostra_inicial, :n_amostra_final, :quantidade_tubitos
  json.url pesquisa_url(pesquisa, format: :json)
end
