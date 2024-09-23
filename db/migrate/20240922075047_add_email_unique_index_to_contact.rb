class AddEmailUniqueIndexToContact < ActiveRecord::Migration[7.2]
  def change
    add_index :contacts, :email, unique: true
  end
end
