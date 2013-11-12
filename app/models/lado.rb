class Lado < ActiveRecord::Base
	belong_to :quadra
	has_many :imoveis, :ruas
end
