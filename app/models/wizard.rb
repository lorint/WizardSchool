class Wizard < ActiveRecord::Base
	validates_presence_of :first_name, :last_name, :house, :is_muggle

	has_many :hats

	def full_name
		first_name.capitalize + " " + last_name.capitalize
	end

	def full_name_with_initial
		if middle_name == nil 
			self.full_name
		else
			"#{first_name.capitalize} #{middle_name.first.capitalize}. #{last_name.capitalize}"
		end
	end

	def email
		if is_muggle == true
			"#{first_name.downcase}@muggle.com"
		else
			"#{first_name.downcase}@#{house.downcase}.com"
		end
	end
end
