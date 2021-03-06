require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus.rb')
require_relative('../person.rb')

class TestPerson < Minitest::Test
  #setup method for test data
  def setup
    @person1 = Person.new("Barry",35)
    @person2 = Person.new("Julie",22)
    @person3 = Person.new("Kovak",55)
  end

  #testing methods which will return PASS
  def test_person_name()
    assert_equal("Barry",@person1.name())
  end

  def test_person_age()
    assert_equal(35,@person1.age())
  end
end
