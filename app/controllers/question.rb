# show all 
get '/questions' do
	erb :"question/questions", :layout => :"layout.html"
end
#show one 
get '/questions/:id' do
	@question = Question.find_by(id: params[:id])
	session[:question_id] = @question.id
	@question_vote = QuestionVote.find_by(question_id: session[:question_id])
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
	@user = User.find_by(id: params[:id])
	@questions_list = Question.where(user_id: @user_id).order(update_at: :desc)
	return erb :"questions/"
end

#upvote
get  '/questions/:id/upvote' do
	QuestionVote.create(user_id: session[:id],question_id: session[:question_id],votetype: true,question_votes_count: 1)
end

get  '/questions/:id/downvote' do
	QuestionVote.create(user_id: session[:id],question_id: session[:question_id],votetype: true,question_votes_count: -1)
end



