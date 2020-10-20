require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'

class RenterTest < Minitest::Test
  #iteration 1
  def setup
    @renter1 = Renter.new("Jessie")
  end

  def test_it_exists_and_has_attributes
    assert_equal "Jessie", @renter1.name
  end
end
