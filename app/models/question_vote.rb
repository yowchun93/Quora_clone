class QuestionVote < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	belongs_to :user 
	belongs_to :question, counter_cache: true 
	validates_uniqueness_of :user_id, :scope => [:question_id]
end
