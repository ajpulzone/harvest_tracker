require "rails_helper"

RSpec.describe Plot do
  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :size_sq_ft}
    it {should validate_presence_of :property_id}
  end

  describe "relationships" do
    it {should belong_to(:property)}
    it {should have_many(:plot_plants)}
    it {should have_many(:plants).through(:plot_plants)}
  end
end