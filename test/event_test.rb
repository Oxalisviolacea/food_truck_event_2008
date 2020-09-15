require 'minitest/autorun'
require 'minitest/pride'
require './lib/food_truck'
require './lib/item'
require './lib/event'

class EventTest < Minitest::Test
  def setup
    @event = Event.new("South Pearl Street Farmers Market")
  end

  def test_it_has_attributes
    assert_equal "South Pearl Street Farmers Market", @event.name
  end
end