class Plant < ApplicationRecord

  validates_presence_of :name
  validates_presence_of :type
  validates_presence_of :purchase_date
  validates_presence_of :bloom_start
  validates_presence_of :bloom_end
  validates_presence_of :harvest_start
  validates_presence_of :harvest_end
  validates_presence_of :self_fertile
  validates_presence_of :description

  has_many :plot_plants
  has_many :plots, through: :plot_plants
end