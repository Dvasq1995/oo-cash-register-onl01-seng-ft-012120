require 'pry'
class CashRegister
  attr_accessor :total
  
  def initialize(employee_discount = 0)
    @items = []
    @total = 0
    @employee_discount = employee_discount
    @void_last_transaction = 0
    @previous_total = 0
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times {@items << title}
    @previous_total = @total
    @void_last_transaction = (price * quantity)
    @total += (price * quantity)
  end
  
  def discount
    @employee_discount
  end
  
  def apply_discount
    if @employee_discount == 0
      'There is no discount to apply.'
    else
      @employee_discount /= 100.0
      discount = @total * @employee_discount
      @total -= discount
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @void_last_transaction
  end
end