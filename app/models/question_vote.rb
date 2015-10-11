class QuestionVote < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	belongs_to :user 
	belongs_to :question
	validates_uniqueness_of :user_id, :scope => [:question_id]
end


# goes throught the question_id list make sure there is only 1 copy of user_id 