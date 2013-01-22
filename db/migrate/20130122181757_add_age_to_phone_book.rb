class AddAgeToPhoneBook < ActiveRecord::Migration
  def change
    add_column :phone_books, :age, :integer
  end
end
