class Option < ApplicationRecord
	belongs_to :aspect

	has_and_belongs_to_many :products
	

end
