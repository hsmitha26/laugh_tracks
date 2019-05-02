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

  before :each do
    @comedian_1 = Comedian.create!(name: "Comedian 1", age: 31, city: "Denver", image: "https://home-photo-deco.com/1508-large_default/charlie-chaplin-pop-art-canvas-print.jpg")
    @comedian_2 = Comedian.create!(name: "Comedian 2", age: 34, city: "Boulder", image: "https://home-photo-deco.com/1508-large_default/charlie-chaplin-pop-art-canvas-print.jpg")
    @comedian_3 = Comedian.create!(name: "Comedian 3", age: 34, city: "Boulder", image: "https://home-photo-deco.com/1508-large_default/charlie-chaplin-pop-art-canvas-print.jpg")

    @special_1 = @comedian_1.specials.create!(name: "Special 1", run_time: 55)
    @special_2 = @comedian_1.specials.create!(name: "Special 2", run_time: 60)
    @special_3 = @comedian_2.specials.create!(name: "Special 3", run_time: 65)
    @special_4 = @comedian_3.specials.create!(name: "Special 4", run_time: 70)
  end

  describe "instance methods" do
    it "can count number of specials for each comedian" do
      expect(@comedian_1.specials_count).to eq(2)
      expect(@comedian_2.specials_count).to eq(1)
    end
  end

  describe "class methods" do
    it "can find comedians via url query" do
      expect(Comedian.find_by_query(34)).to eq([@comedian_2, @comedian_3])
    end

    it "can calculate average age of all comedians" do
      expect(Comedian.find_average_age).to eq(33)
    end

    it "can find unique cities of comedians" do
      expect(Comedian.find_cities).to eq("Boulder, Denver")
    end
  end
end
