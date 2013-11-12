class Visitum < ActiveRecord::Base
	belong_to :usuario, :atividade
	has_one :tratamento, :pesquisa
end
