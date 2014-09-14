class Rate < ActiveRecord::Base
  validates :cold_water, presence: true
  validates_presence_of :valid_from, :central_heating, :hot_water, :electricity
  validates_numericality_of :central_heating, :hot_water, :electricity, :cold_water
end
