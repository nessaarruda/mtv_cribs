require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'

class ApartmentTest < Minitest::Test

  def setup
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  end

  def test_it_exists_and_has_attributes
    assert_equal "A1", @unit1.number
  end
end
