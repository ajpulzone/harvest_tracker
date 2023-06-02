class Property < ApplicationRecord

  validates_presence_of :name
  validates_presence_of :zip_code
  validates_presence_of :user_id

  belongs_to :user
  has_many :plots
  has_many :plot_plants, through: :plots
  has_many :plants, through: :plot_plants
end