class Comedian < ApplicationRecord
  validates_presence_of :name, :age, :city

  has_many :specials

  def specials_count
    specials.count
  end

  def self.find_by_query(age)
    self.where(age: age)
  end

  def self.find_average_age
    self.average(:age)
  end

  def self.find_cities
    cities = self.select(:city).order(:city).distinct
    cities.map do |comedian|
      comedian.city
    end.join(", ")
  end

  def self.sort_by_name(name)
    self.order(name)
  end
end
