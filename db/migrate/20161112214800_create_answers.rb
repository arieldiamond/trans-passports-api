class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
    	t.integer :question_group_id
    	t.string :answer_text
    	t.string :answer_resource
    	t.integer :next_question_id
    	t.string :answer_type

      t.timestamps
    end
  end
end
