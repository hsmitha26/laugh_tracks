class Comedian < ApplicationRecord
  validates_presence_of :name, :age, :city

  has_many :specials

  def specials_count
    specials.count
  end
end
