class Client < ActiveRecord::Base
	has_many :notes
	validates_presence_of :name, :lastname

	def fullname
		"#{name} #{lastname}"
	end
	
end
