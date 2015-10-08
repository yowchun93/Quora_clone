# show all 
get '/answers' do

end
#show one 
get '/answers/:id' do

end
# make a new user  
post '/answers' do
	#create answer
	@answer = Answer.create(description: params[:answer],user_id: session[:id],question_id: session[:question_id])
	if @answer.save
		redirect to "/questions/#{question_id}"
	else
		@error = "You can only post 1 answer for 1 user"
		redirect to "/users/session[:id]"
	end
end
#update user 
put '/answers/:id' do 

end
# delete user 
delete '/answers/:id' do 
	
end

get '/users/:id/answers' do
	@user = User.find_by(id: params[:id])
	@answer_list = Answer.where(user_id: @user.id).order(updated_at: :desc)
	# redirect to the user_answer
end
