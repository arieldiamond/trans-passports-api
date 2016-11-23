class CreateQuestionGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :question_groups do |t|
    	t.integer :order
    	t.string :question_topic
    	t.string :question_text

      t.timestamps
    end
  end
end
