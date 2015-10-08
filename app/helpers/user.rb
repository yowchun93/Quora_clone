helpers do 
	def current_user
		if session[:id]
			@current_user ||= User.find_by_id(session[:id])
		end
	end

	def logged_in?
		!current_user.nil?
	end

	#show the user questions 
	def show_user_questions
		if logged_in?
			@user_questions = @current_user.question
		end
	end

	
end