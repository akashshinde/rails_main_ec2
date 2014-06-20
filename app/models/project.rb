class Project < ActiveRecord::Base
	has_many :bbhks
	has_many :hks
	has_many :bhks
	has_one :floor
end
