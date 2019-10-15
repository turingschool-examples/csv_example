require 'minitest/autorun'
require 'minitest/pride'
require './lib/animal_lover'

class AnimalLoverTest < Minitest::Test

  def setup
    @hagrid = AnimalLover.new(1,'Rubeus','Hagrid',60)
  end

  def test_animal_lover_exisits
    assert_instance_of AnimalLover, @hagrid
  end

  def test_animal_lover_has_attributes
    assert_equal 1, @hagrid.id
    assert_equal 'Rubeus', @hagrid.first_name
    assert_equal 'Hagrid', @hagrid.last_name
    assert_equal 60, @hagrid.age
  end

  def test_animal_lover_has_full_name
    assert_equal "Rubeus Hagrid", @hagrid.full_name
  end

end
