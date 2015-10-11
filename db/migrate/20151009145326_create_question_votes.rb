class CreateQuestionVotes < ActiveRecord::Migration
		def change
		create_table :question_votes do |t|
			t.integer :user_id
			t.integer :question_id  
			t.boolean :votetype
			t.integer :question_votes_count, default: 0
			t.timestamps
			end
		end
end
