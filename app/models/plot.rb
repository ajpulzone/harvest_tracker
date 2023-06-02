class Plot < ApplicationRecord

  validates_presence_of :name
  validates_presence_of :size_sq_ft
  validates_presence_of :property_id

  belongs_to :property
  has_many :plot_plants
  has_many :plants, through: :plot_plants

end