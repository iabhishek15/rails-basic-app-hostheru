class User < ApplicationRecord

	validates :first_name, presence:true
	validates :email, presence:true
	validates :username, presence: true, uniqueness:true, length: {
		minimum:6, 
		maximum:20
	}
	# validates :password, presence: true 
	# validates :password_confirmation, presence: true
	validates :password, confirmation: true
	validates :password_confirmation, presence:true
	
	validates :age, presence:true, length: {
		minimum: 2, 
		maximum: 100
	}
	validates :agree, presence:true

	
	validate :custom_password_validation

	private def custom_password_validation
		puts "***************** I am calling this in model********"
		if self.password.length > 0 && self.password != self.password_confirmation
			self.errors[:base] << "Password and Confirm Password do not match"
		end
	end


	before_save:format_data

	def format_data 
		self.first_name = self.first_name.capitalize
		self.last_name = self.last_name.capitalize
		self.full_name = self.first_name + " " + self.last_name 
	end  

end
