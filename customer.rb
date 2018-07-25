class Customer

  attr_reader :name, :money
  attr_writer :money

  def initialize(name, money)
    @name = name
    @money = money
    @drinks = []
  end


  def drinks_count()
    return @drinks.count()
  end

  def takes_drink(drink)
    @drinks.push(drink)
  end

  def buys_drink(drink)
    @money -= drink.price
  end
end
