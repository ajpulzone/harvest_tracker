class PlotPlant < ApplicationRecord

  validates_presence_of :plot_id
  validates_presence_of :plant_id

  belongs_to :plot
  belongs_to :plant
end