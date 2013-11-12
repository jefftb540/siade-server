
class Bairro < ActiveRecord::Base
	belong_to :cidade
	has_many :quadras
end
