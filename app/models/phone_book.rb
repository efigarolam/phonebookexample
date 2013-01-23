class PhoneBook < ActiveRecord::Base
  attr_accessible :address, :last_name, :name, :phone, :age
  validates :name, presence: true
  validates :phone, presence: true
  validates :age, numericality: true, allow_blank: true
end
