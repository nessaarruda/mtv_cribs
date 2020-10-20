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
    @renter1 = Renter.new("Aurora")
    @renter2 = Renter.new("Tim")
  end

  def test_units_start_empty
    assert_equal [], @building.units
  end

  def test_it_can_add_units
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    assert_equal [@unit1, @unit2], @building.units
  end

  def test_renters_start_empty
    assert_equal [[]], @building.renters([])
  end

  def test_it_can_add_renters
    @unit1.add_renter(@renter1)
    assert_equal ["Aurora"], @building.renters(@renter1.name)
    @unit2.add_renter(@renter2)
    assert_equal ["Aurora", "Tim"], @building.renters(@renter2.name)
  end

  def test_building_average_rent
    assert_equal 1099.5, @building.average_rent
  end

  #iteration 3


end
