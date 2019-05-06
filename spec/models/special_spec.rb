require 'rails_helper'

RSpec.describe Special do
  describe "Validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :run_time}
  end

  describe "Relationship" do
    it {should belong_to :comedian}
  end

  describe "class methods" do

    before :each do
      @comedian_1 = Comedian.create!(name: "Abby Z.", age: 31, city: "Denver", image: "https://home-photo-deco.com/1508-large_default/charlie-chaplin-pop-art-canvas-print.jpg")
      @comedian_2 = Comedian.create!(name: "Bob G.", age: 34, city: "Boulder", image: "https://home-photo-deco.com/1508-large_default/charlie-chaplin-pop-art-canvas-print.jpg")
      @comedian_3 = Comedian.create!(name: "Bill Phil", age: 34, city: "Boulder", image: "https://home-photo-deco.com/1508-large_default/charlie-chaplin-pop-art-canvas-print.jpg")

      @special_1 = @comedian_1.specials.create!(name: "Special 1", run_time: 55)
      @special_2 = @comedian_1.specials.create!(name: "Special 2", run_time: 60)
      @special_3 = @comedian_2.specials.create!(name: "Special 3", run_time: 65)
      @special_4 = @comedian_3.specials.create!(name: "Special 4", run_time: 70)
    end
    
    it "can calculate total number of TV specials for all comedians" do
      expect(Special.total_specials).to eq(4)
    end
  end
end
