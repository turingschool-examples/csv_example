require 'minitest/autorun'
require 'minitest/pride'
require './lib/magical_pet'

class MagicalPetTest < Minitest::Test

  def setup
    @fluffy = MagicalPet.new(1,'Fluffy',1)
  end

  def test_magical_pet_exisits
    assert_instance_of MagicalPet, @fluffy
  end

  def test_magical_pet_has_attributes
    assert_equal 1, @fluffy.id
    assert_equal 'Fluffy', @fluffy.name
    assert_equal 1, @fluffy.pet_owner_id
  end

end
