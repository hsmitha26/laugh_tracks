require 'rails_helper'

RSpec.describe "As a visitor, " do
  describe "I click on a comedian's name, " do
    before :each do
      @comedian_1 = Comedian.create!(name: "Comedian 1", age: 34, city: "Denver", image: "https://home-photo-deco.com/1508-large_default/charlie-chaplin-pop-art-canvas-print.jpg")
      @comedian_2 = Comedian.create!(name: "Comedian 2", age: 31, city: "Boulder", image: "https://home-photo-deco.com/1508-large_default/charlie-chaplin-pop-art-canvas-print.jpg")
      @comedian_3 = Comedian.create!(name: "Comedian 3", age: 34, city: "Boulder", image: "https://home-photo-deco.com/1508-large_default/charlie-chaplin-pop-art-canvas-print.jpg")

      @special_1 = @comedian_1.specials.create!(name: "Special 1", run_time: 55)
      @special_2 = @comedian_1.specials.create!(name: "Special 2", run_time: 60)
      @special_3 = @comedian_2.specials.create!(name: "Special 3", run_time: 65)
      @special_4 = @comedian_3.specials.create!(name: "Special 4", run_time: 70)
    end

    it "shows details of the specific comedian" do
      visit '/comedians'
      click_on @comedian_1.name

      expect(current_path).to eq("/comedians/#{@comedian_1.id}")

      expect(page).to have_content(@comedian_1.name)
      expect(page).to have_content(@comedian_1.age)
      expect(page).to have_content(@comedian_1.city)
      expect(page).to have_css("img[src='#{@comedian_1.image}']")

      expect(page).to have_content(@special_1.name)
      expect(page).to have_content(@special_1.run_time)

      expect(page).to have_content(@special_2.name)
      expect(page).to have_content(@special_2.run_time)

      expect(page).to_not have_content(@comedian_2.name)
      expect(page).to_not have_content(@special_3.run_time)

    end
  end
end
