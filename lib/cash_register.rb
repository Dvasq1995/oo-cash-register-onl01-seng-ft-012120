class CashRegister
  attr_accessor :total, :employee_discount
  @items = []
  
  def initialize(employee_discount = 0)
    @total = 0
    @employee_discount = employee_discount
  end
  
  def add_item(title, price, quantity = 0)
    
  end
  
  def apply_discount
    
  end
  
  def items
    
  end
  
  def void_last_transaction
    
  end
end