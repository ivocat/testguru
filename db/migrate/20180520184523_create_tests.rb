class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.string :title
      t.integer :level
      t.references :author, index: true, foreign_key: { to_table: :users }
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
