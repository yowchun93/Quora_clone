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
#delete
# destroy '/questions/:id' do 

# end



