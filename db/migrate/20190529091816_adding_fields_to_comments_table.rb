class AddingFieldsToCommentsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :body, :string
    add_reference :comments, :user, foreign_key: true
    add_reference :comments, :post, foreign_key: true
    add_column :comments, :enabled, :boolean, default: true 
  end
end
