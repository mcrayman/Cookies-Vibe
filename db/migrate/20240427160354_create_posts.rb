class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :mood
      t.date :date
      t.integer :age

      t.timestamps
    end
  end
end
