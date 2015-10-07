class User < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	has_many :question
	has_many :answer 
	validates_uniqueness_of :email

	def self.authenticate(email,password)
		user = User.find_by(email: email)
		user.password == password
	end

	def self.exist?(email)
		User.find_by(email: email)
	end
end
