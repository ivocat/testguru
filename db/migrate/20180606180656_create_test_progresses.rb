class CreateTestProgresses < ActiveRecord::Migration[5.2]
  def change
    create_table :test_progresses do |t|
      t.references :test, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
