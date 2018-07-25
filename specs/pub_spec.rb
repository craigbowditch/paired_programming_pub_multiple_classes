require 'minitest/autorun'
require 'minitest/rg'
require_relative '../pub'
require_relative '../drinks'
class PubTest < MiniTest::Test

def setup
  @drink1 = Drinks.new("Beer", 3)
  @drink2 = Drinks.new("Cider", 4)
  @pub = Pub.new("Brew", 100, [@drink1, @drink2])
end

  def test_has_name()
    assert_equal("Brew", @pub.name())
  end

  def test_money_in_till()
    assert_equal(100, @pub.money_in_till())
  end

  def test_pub_has_2_drinks()
    assert_equal(2, @pub.drink_count())

  end

  def test_gives_drink__pub_stock_goes_down()
    @pub.sells_drink(@drink1)
    assert_equal(1, @pub.drink_count())
  end
    def test_add_drink_price_to_till()
      @pub.takes_money(@drink1)
      assert_equal(103, @pub.money_in_till())
    end


  





end
