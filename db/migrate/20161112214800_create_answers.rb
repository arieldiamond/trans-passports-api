class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :key
    	t.string :question_group_id
    	t.string :answer_text
    	t.string :answer_resource

      t.timestamps
    end
  end
end
