require 'rails_helper'

RSpec.describe "As a visitor, ", type: :feature do
  describe "I visit the comedians index page, " do
    it "I see a list of comedians and their attributes" do
      comedian_1 = Comedian.create!(name: "Comedian 1", age: 30, city: "Denver")
      comedian_2 = Comedian.create!(name: "Comedian 2", age: 31, city: "Boulder")
      visit '/comedians'

      within "#comedian-index-#{comedian_1.id}" do
        expect(page).to have_content(comedian_1.name)
        expect(page).to have_content(comedian_1.age)
        expect(page).to have_content(comedian_1.city)
      end

      within "#comedian-index-#{comedian_2.id}" do
        expect(page).to have_content(comedian_2.name)
        expect(page).to have_content(comedian_2.age)
        expect(page).to have_content(comedian_2.city)
      end
    end
  end
end
