require 'minitest/autorun'
require 'minitest/rg'
require_relative '../customer'
require_relative '../drinks'
require_relative '../pub'


class CustomerTest < MiniTest::Test

  def setup

    @customer1 = Customer.new("Tanny", 15)
    @customer2 = Customer.new("Craig", 10)
    @pub = Pub.new("Brew", 100, [@drink1, @drink2])

    @drink1 = Drinks.new("Beer", 3)
    @drink2 = Drinks.new("Cider", 4)
  end

  def test_has_name()
    assert_equal("Tanny", @customer1.name())
  end

  def test_has_money()
    assert_equal(15, @customer1.money())
  end

  def test_has_no_drinks()
    assert_equal(0, @customer1.drinks_count())
  end

  def test_add_drink_to_customer()
    @customer1.takes_drink(@pub)
    assert_equal(1, @customer1.drinks_count())
  end

  def test_takes_money_from_wallet()
    @customer1.buys_drink(@drink1)
    assert_equal(12, @customer1.money)
  end





















end
