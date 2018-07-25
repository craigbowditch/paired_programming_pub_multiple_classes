require 'minitest/autorun'
require 'minitest/rg'
require_relative '../drinks.rb'

class DrinksTest < MiniTest::Test

  def setup

    @drink1 = Drinks.new("Beer", 3)
    @drink2 = Drinks.new("Cider", 3)
    @drink3 = Drinks.new("Wine", 5)
  end


  def test_has_name()
    assert_equal("Beer", @drink1.name())
  end

  def test_has_price()
    assert_equal(5, @drink3.price())
  end










end
