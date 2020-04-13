class AddTitleToNewBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :new_books, :title, :string
  end
end
