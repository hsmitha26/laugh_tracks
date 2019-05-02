require 'rails_helper'

RSpec.describe "As a visitor, when I click on Add New Comedian," do
  it "I see a form to add a new comedian" do
    visit '/comedians'
    click_on "Add New Comedian"

    expect(current_path).to eq('/comedians/new')

    fill_in 'Name', with: 'New Comedian'
    fill_in 'Age', with: 34
    fill_in 'City', with: 'Some City'

    click_on 'Create Comedian'

    comedian = Comedian.last

    expect(current_path).to eq("/comedians/#{comedian.id}")

    expect(page).to have_content(comedian.name)
    expect(page).to have_content(comedian.age)
    expect(page).to have_content(comedian.city)
  end
end
