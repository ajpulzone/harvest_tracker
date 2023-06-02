class User < ApplicationRecord

  validates_presence_of :uid
  validates_presence_of :name
  validates_presence_of :email

  has_many :properties
  has_many :plots, through: :properties
  has_many :plot_plants, through: :plots
  has_many :plants, through: :plot_plants
end