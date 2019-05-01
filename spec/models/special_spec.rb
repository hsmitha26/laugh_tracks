require 'rails_helper'

RSpec.describe Special do
  describe "Validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :run_time}
  end

  describe "Relationship" do
    it {should belong_to :comedian}
  end
end
