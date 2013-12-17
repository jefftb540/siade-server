class Imovel < ActiveRecord::Base
	belong_to :lado
	has_many :visitums
end
