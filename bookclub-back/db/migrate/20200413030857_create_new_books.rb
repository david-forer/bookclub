class CreateNewBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :new_books do |t|
      t.string :author
      t.string :genre
      t.string :link

      t.timestamps
    end
  end
end
