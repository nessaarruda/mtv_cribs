require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require './lib/building'

class BuildingTest < Minitest::Test

  def setup
    @building = Building.new
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
  end

  def test_units_start_empty
    assert_equal [], @building.units
  end

  def test_it_can_add_units
    @building.add_unit(unit1)
    @building.add_unit(unit2)
    assert_equal [@unit1, @unit2], @building.units
  end
end
