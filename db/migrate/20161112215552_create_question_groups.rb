class CreateQuestionGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :question_groups do |t|
    	t.string :key
    	t.string :question_text
    	t.string :subtitle

      t.timestamps
    end
  end
end
