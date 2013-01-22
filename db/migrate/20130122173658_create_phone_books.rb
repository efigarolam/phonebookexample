class CreatePhoneBooks < ActiveRecord::Migration
  def change
    create_table :phone_books do |t|
      t.string :name
      t.string :last_name
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
