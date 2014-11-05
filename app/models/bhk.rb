class Bhk < ActiveRecord::Base
	belongs_to :project
	has_many :images
	belongs_to :buyer
end
