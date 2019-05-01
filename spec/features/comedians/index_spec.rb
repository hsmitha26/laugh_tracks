require 'rails_helper'

RSpec.describe "As a visitor, ", type: :feature do
  describe "I visit the comedians index page, " do
    before :each do
      # https://home-photo-deco.com/1508-large_default/charlie-chaplin-pop-art-canvas-print.jpg

      @comedian_1 = Comedian.create!(name: "Comedian 1", age: 30, city: "Denver", image: "https://home-photo-deco.com/1508-large_default/charlie-chaplin-pop-art-canvas-print.jpg")
      @comedian_2 = Comedian.create!(name: "Comedian 2", age: 31, city: "Boulder", image: "https://home-photo-deco.com/1508-large_default/charlie-chaplin-pop-art-canvas-print.jpg")

      @special_1 = @comedian_1.specials.create!(name: "Special 1", run_time: 55)
      @special_2 = @comedian_1.specials.create!(name: "Special 2", run_time: 60)
      @special_3 = @comedian_2.specials.create!(name: "Special 3", run_time: 65)
    end
    it "I see a list of comedians - their name, age and city" do
      visit '/comedians'

      within "#comedian-index-#{@comedian_1.id}" do
        expect(page).to have_content(@comedian_1.name)
        expect(page).to have_content(@comedian_1.age)
        expect(page).to have_content(@comedian_1.city)
      end

      within "#comedian-index-#{@comedian_2.id}" do
        expect(page).to have_content(@comedian_2.name)
        expect(page).to have_content(@comedian_2.age)
        expect(page).to have_content(@comedian_2.city)
      end
    end

    it "I also see a list of each comedian's TV specials, including name of special and run time" do
      visit '/comedians'

      within "#comedian-specials-#{@special_1.id}" do
        expect(page).to have_content(@special_1.name)
        expect(page).to have_content(@special_1.run_time)
      end
      within "#comedian-specials-#{@special_2.id}" do
        expect(page).to have_content(@special_2.name)
        expect(page).to have_content(@special_2.run_time)
      end
      within "#comedian-specials-#{@special_3.id}" do
        expect(page).to have_content(@special_3.name)
        expect(page).to have_content(@special_3.run_time)
        expect(page).to_not have_content(@special_1.name)
      end
    end

    it "I see a thumbnail image for each comedian" do
      visit '/comedians'

      within "#comedian-index-#{@comedian_1.id}" do
        expect(page).to have_css("img[src*='#{@comedian_1.image}']")
      end
      within "#comedian-index-#{@comedian_2.id}" do
        expect(page).to have_css("img[src*='#{@comedian_2.image}']")
      end
    end
  end
end
