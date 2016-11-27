class AddSubtitleToQuestionGroup < ActiveRecord::Migration[5.0]
  def change
    add_column :question_groups, :subtitle, :string
  end
end
