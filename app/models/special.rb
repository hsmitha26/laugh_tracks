class Special < ApplicationRecord
  validates_presence_of :name, :run_time

  belongs_to :comedian

  def self.total_specials
    self.count
  end
end
