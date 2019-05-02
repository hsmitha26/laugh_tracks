class Comedian < ApplicationRecord
  validates_presence_of :name, :age, :city

  has_many :specials

  def specials_count
    specials.count
  end

  def self.find_by_query(age)
    self.where(age: age)
  end
end
