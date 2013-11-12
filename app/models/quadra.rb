class Quadra < ActiveRecord::Base
	belong_to :bairro
	has_many :lados
end
