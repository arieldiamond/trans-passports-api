class CreateRecommendations < ActiveRecord::Migration[5.0]
  def change
    create_table :recommendations do |t|
    	t.string :key
    	t.string :rec_text
    	t.string :rec_resource
    	t.integer :required_answer_ids, array: true, default: []

      t.timestamps
    end
  end
end
