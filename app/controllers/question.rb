# show all 
get '/questions' do
	erb :"question/questions", :layout => :"layout.html"
end
#show one 
get '/questions/:id' do
	@question = Question.find_by(id: params[:id])
	session[:question_id] = @question.id
	erb :"question/question", :layout => :"layout.html"
end
# make a new question  
post '/questions' do
	@question = Question.create(description: params[:answer],user_id: session[:id])
	redirect to "/users/#{session[:id]}"
end
#update questions 
put '/questions/:id' do 

end
# delete question 
delete '/questions:id' do 
	
end
# show all questions which belongs to the user 
get '/users/:id/questions' do 
	byebug
	@user = User.find_by(id: params[:id])
	@questions_list = Question.where(user_id: @user_id).order(update_at: :desc)
	return erb :"questions/"
end



