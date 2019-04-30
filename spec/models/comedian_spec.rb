require 'rails_helper'

RSpec.describe Comedian, type: :model do
  describe "Validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :age}
    it {should validate_presence_of :city}
  end

  describe "Relationship" do
    it {should have_many :specials}
  end
end
