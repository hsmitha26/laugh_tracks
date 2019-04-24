require 'rails_helper'

RSpec.describe "As a visitor, I visit the index page," do
  it "I see a list of comedians and their attributes" do
    visit comedians_path
    
  end
end
