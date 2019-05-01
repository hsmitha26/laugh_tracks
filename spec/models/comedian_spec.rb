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

  describe "instance methods" do
    before :each do
      @comedian_1 = Comedian.create!(name: "Comedian 1", age: 30, city: "Denver", image: "https://home-photo-deco.com/1508-large_default/charlie-chaplin-pop-art-canvas-print.jpg")
      @comedian_2 = Comedian.create!(name: "Comedian 2", age: 31, city: "Boulder", image: "https://home-photo-deco.com/1508-large_default/charlie-chaplin-pop-art-canvas-print.jpg")

      @special_1 = @comedian_1.specials.create!(name: "Special 1", run_time: 55)
      @special_2 = @comedian_1.specials.create!(name: "Special 2", run_time: 60)
      @special_3 = @comedian_2.specials.create!(name: "Special 3", run_time: 65)
    end

    it "can count number of specials for each comedian" do
      expect(@comedian_1.specials_count).to eq(2)
      expect(@comedian_2.specials_count).to eq(1)
    end
  end
end
