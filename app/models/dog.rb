class Dog < ApplicationRecord
  has_many :employees
  accepts_nested_attributes_for :employees
end
