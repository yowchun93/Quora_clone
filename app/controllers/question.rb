# show all 
get '/questions' do
	
	erb :"question/questions", :layout => :"layout.html"
end
#show one 
get '/questions/:id' do

end
# make a new user  
post '/questions' do

end
#update user 
put '/questions/:id' do 

end
# delete user 
delete '/questions:id' do 
	
end
#delete
# destroy '/questions/:id' do 

# end



