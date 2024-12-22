class AddUniqueIndexToEmails < ActiveRecord::Migration[7.0]
  def change
    add_index :artisans, :email, unique: true
    add_index :customers, :email, unique: true
  end
end
