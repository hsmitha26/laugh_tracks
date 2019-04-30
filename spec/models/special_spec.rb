require 'rails_helper'

RSpec.describe Special do
  describe "Validations" do
    it {should have_presence_of :name}
    it {should have_presence_of :run_time}
  end
end
