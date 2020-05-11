require 'pry'
class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    if @discount != 0
      self.total = @total - (@total * @discount / 100)
      puts "After the discount, the total comes to #{self.total}."
    else
      puts "There is no discount to apply."

    end
  end

end
