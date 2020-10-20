require './lib/apartment'
require './lib/renter'

class Building

  attr_reader :units, :renters

  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters(renter)
    @renters << renter
  end

  def average_rent
    require "pry"; binding.pry
    @units.sum do |unit|
      unit.monthly_rent
    end
  end

end
