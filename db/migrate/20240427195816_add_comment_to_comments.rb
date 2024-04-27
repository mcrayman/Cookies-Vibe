class AddCommentToComments < ActiveRecord::Migration[7.1]
  def change
    add_column :comments, :comment, :text
  end
end
