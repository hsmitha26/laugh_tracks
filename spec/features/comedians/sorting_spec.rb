require  'rails_helper'

RSpec.describe "As a visitor, " do
  describe "I can sort data by categories: " do

    before :each do
      @comedian_1 = Comedian.create!(name: "Abby Z.", age: 34, city: "Denver", image: "https://home-photo-deco.com/1508-large_default/charlie-chaplin-pop-art-canvas-print.jpg")
      @comedian_2 = Comedian.create!(name: "Bob G.", age: 31, city: "Boulder", image: "https://home-photo-deco.com/1508-large_default/charlie-chaplin-pop-art-canvas-print.jpg")
      @comedian_3 = Comedian.create!(name: "Bill Phil", age: 34, city: "Boulder", image: "https://home-photo-deco.com/1508-large_default/charlie-chaplin-pop-art-canvas-print.jpg")

      @special_1 = @comedian_1.specials.create!(name: "Special 1", run_time: 55)
      @special_2 = @comedian_1.specials.create!(name: "Special 2", run_time: 60)
      @special_3 = @comedian_2.specials.create!(name: "Special 3", run_time: 65)
      @special_4 = @comedian_3.specials.create!(name: "Special 4", run_time: 70)
    end

    xit "sort by comedian names in alphabetical order, by first names" do
      visit '/comedians?sort=name'
# save_and_open_page
      within "#comedian-index-#{@comedian_1.id}" do
        expect(page).to have_content(@comedian_1.name)
      end
      within "#comedian-index-#{@comedian_3.id}" do
        expect(page).to have_content(@comedian_3.name)
      end
      # expect(page.all("comedians-container")[1]).to have_content(@comedian_3.name)
      # expect(page.all("comedians-container")[2]).to have_content(@comedian_2.name)
    end
  end
end
