class Buyer < ActiveRecord::Base
	has_many :bhks
	has_many :hks
	has_many :bbhks
end
