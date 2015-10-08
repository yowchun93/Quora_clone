
# the homepage of quora app 
get '/' do
	@all_questions = Question.all
	erb :"static/homepage", :layout => :"layout.html"
end
















