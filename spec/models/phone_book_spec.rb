require 'spec_helper'

describe PhoneBook do
  before {
  	@valid_attrs = { name: "Juan", last_name: "Perez", phone: "999-99-9-99-99", address: "Col. Vista Hermosa" }
  }

  context "model validations" do
  	it "must be valid with all the attributes" do
  		phone_book = PhoneBook.new @valid_attrs

  		phone_book.valid?.should be_true
  	end

  	it "must be invalid without name" do
  		@valid_attrs.delete(:name)
  		phone_book = PhoneBook.new @valid_attrs

  		phone_book.valid?.should be_false
  		phone_book.errors[:name].size.should > 0
  	end

  	it "must be invalid without phone" do
  		@valid_attrs.delete(:phone)
  		phone_book = PhoneBook.new @valid_attrs

  		phone_book.valid?.should be_false
  		phone_book.errors[:phone].size.should > 0
  	end

  	it "must be valid only with name and phone" do 
  		@valid_attrs.delete(:last_name)
  		@valid_attrs.delete(:address)
  		phone_book = PhoneBook.new @valid_attrs

  		phone_book.valid?.should be_true
  	end

    it "age must be valid with a number" do
      phone_book = PhoneBook.new @valid_attrs
      phone_book.age = 10

      phone_book.valid?.should be_true
    end

  	it "age must be invalid without a number" do 
  		phone_book = PhoneBook.new @valid_attrs
      phone_book.age = "Diez"

      phone_book.valid?.should be_false
      phone_book.errors[:age].size.should > 0
  	end
  end  
end
