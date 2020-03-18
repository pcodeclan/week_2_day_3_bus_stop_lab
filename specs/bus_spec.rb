require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus.rb')
require_relative('../person.rb')

class TestBus < Minitest::Test
  #Setup method for test data
  def setup()
    @bus1 = Bus.new(22, "Ocean Terminal")
  end

  #Testing methods which will return PASS
  def test_route_num()
    assert_equal(22,@bus1.route_num())
  end

  def test_bus_destination()
    assert_equal("Ocean Terminal",@bus1.destination())
  end




end
