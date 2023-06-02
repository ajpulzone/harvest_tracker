require "rails_helper"

RSpec.describe Plant do
  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :type}
    it {should validate_presence_of :purchase_date}
    it {should validate_presence_of :bloom_start}
    it {should validate_presence_of :bloom_end}
    it {should validate_presence_of :harvest_start}
    it {should validate_presence_of :harvest_end}
    it {should validate_presence_of :self_fertile}
    it {should validate_presence_of :description}
  end

  describe "relationships" do
    it {should have_many(:plot_plants)}
    it {should have_many(:plots).through(:plot_plants)}
  end
end