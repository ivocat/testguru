class AddQuestionsTitleBodyNullConstraint < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:questions, :title, false)
    change_column_null(:questions, :body, false)
  end
end
