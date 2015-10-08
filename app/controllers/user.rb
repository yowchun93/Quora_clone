require 'byebug'
enable 'session'
# get '/sessions/new' do
# 	erb :'static/login'
# end
# authenticate 
get '/sessions/new' do
	erb :'static/login', :layout => :"layout.html"
end
# login authentication
post '/sessions' do 
	#check the database 
	if User.exist?(params[:email])
		if User.authenticate(params[:email],params[:password])
			session[:id] = User.find_by(email: params[:email]).id
			redirect to "/users/#{session[:id]}"
		end
	end
	erb :'static/error'
end
# delete a user 
delete '/sessions' do 
	session[:id] = nil 
	redirect to '/'
end 

#get the webpage that has the registration
get '/users/new' do 
	erb :"static/signup", :layout => :"layout.html"
end 
# show all 
get '/users' do
	
end
#show one 
get '/users/:id' do
	@user_questions = show_user_questions
	@user_questions.flatten
	erb :"user/profile", :layout => :"layout.html"
end
# make a new user  
post '/users' do
	
end
#update user 
put '/users/:id' do 

end
# delete user 
delete '/users/:id' do 

end


#delete 
# destroy '/users/:id' do 

# end



