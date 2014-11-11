class Flat < ActiveRecord::Base
	belongs_to :project
	has_many :images
	belongs_to :buyer
	has_many :transactions
end
