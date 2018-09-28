class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, uniqueness: true
  validates :title, uniqueness: true

  def dog_name
    Dog.find(self.dog_id).name
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
