require "rails_helper"

RSpec.describe User do
  describe "validations" do
    it {should validate_presence_of :uid}
    it {should validate_presence_of :name}
    it {should validate_presence_of :email}
  end

  describe "relationships" do
    it {should have_many(:properties)}
    it {should have_many(:plots).through(:properties)}
    it {should have_many(:plot_plants).through(:plots)}
    it {should have_many(:plants).through(:plot_plants)}
  end
end