class User < ApplicationRecord

  validates_presence_of :uid
  validates_presence_of :name
  validates_presence_of :email
  validates_uniqueness_of :email
  validates :password, confirmation: true, on: :create
  validates :password_confirmation, presence: true, on: :create

  has_many :properties
  has_many :plots, through: :properties
  has_many :plot_plants, through: :plots
  has_many :plants, through: :plot_plants
end