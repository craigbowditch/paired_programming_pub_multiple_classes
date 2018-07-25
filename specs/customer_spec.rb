require 'minitest/autorun'
require 'minitest/rg'
require_relative '../customer'

class CustomerTest < MiniTest::Test

  def setup

    @customer1 = Customer.new("Tanny", 15)
    @customer2 = Customer.new("Craig", 10)
  end

  def test_has_name()
    assert_equal("Tanny", @customer1.name())
  end

  def test_has_money()
    assert_equal(15, @customer1.money())

  end

















end
