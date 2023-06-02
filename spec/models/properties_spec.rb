require "rails_helper"

RSpec.describe Property do
  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :zip_code}
    it {should validate_presence_of :user_id}
  end

  describe "relationships" do
    it {should belong_to(:user)}
    it {should have_many(:plots)}
    it {should have_many(:plot_plants).through(:plots)}
    it {should have_many(:plants).through(:plot_plants)}
  end
end