class AddTagToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :tag, :string
  end
end
