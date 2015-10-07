
# the homepage of quora app 
get '/' do
	erb :"static/homepage", :layout => :"layout.html"
end

# post '/signup' do 
# 	password = params[:password]
# 	username = params[:username]
# 	User.create(username: username,password: password)

# 	sessions[:username] = params[:username]
# 	redirect "/"
# 	# create user 
# end	

# post '/login' do 
# 	if User.find_by(username: params[:username])
# 		user = User.find_by(username: params[:username])
# 		if user.password = params[:password]
# 			session[:username] = params[:username]
# 			redirect '/user'
# 		end
# 	end
# 	redirect '/'
# end			

get '/session/new' do 
	
end 

post '/session' do 

end

delete '/session' do 

end 














