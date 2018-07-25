class Pub

  attr_reader :name, :money_in_till

  def initialize(name, money_in_till, drinks)

    @name = name
    @money_in_till = money_in_till
    @drinks = drinks

  end

  def drink_count()
    return @drinks.count()

  end

  def sells_drink()
    @drinks.shift()
  end

  def takes_money(price_of_drink)
    @money_in_till += price_of_drink.price
  end



end
