class AddColumnToComments < ActiveRecord::Migration[5.1]
  def change
  	add_column :comments, :text, :string
  	add_column :comments, :user_id, :integer
  	add_column :comments, :post_id, :integer
  	add_index :comments, :user_id
  	add_index :comments, :post_id
  end
end

