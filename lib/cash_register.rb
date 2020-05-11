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
      new_total = @total - @discount
      puts "After the discount, the total comes to #{new_total}."
    else
      puts "There is no discount to apply."
      binding.pry
    end
  end

end
