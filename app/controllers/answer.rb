# show all 
get '/answers' do

end
#show one 
get '/answers/:id' do

end
# make a new user  
post '/answers' do
	#create answer
	Answer.create(description: params[:answer],user_id: session[:id],question_id: session[:question_id])
	redirect to "/questions/#{question_id}"
end
#update user 
put '/answers/:id' do 

end
# delete user 
delete '/answers/:id' do 
	
end
