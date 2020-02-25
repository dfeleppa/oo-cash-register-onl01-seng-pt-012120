class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

<<<<<<< HEAD
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times { self.items << title }
    self.last_transaction = @total
    @last_item = price * quantity 
  end
  
  def apply_discount
    if discount != 0 
      @total -= (@total * (@discount / 100.to_f))
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end 
  end 

  def void_last_transaction 
    @items.delete_at(-1)
    self.total = self.total - @last_item
  end 
end
=======
  

  def add_item(title, price, quantity=1)
    @total += price * quantity 
    quantity.times do 
      @items << title 
    end 
    @last_item = price * quantity 
  end 
  
  def apply_discount
    if self.total == 0
      "There is no discount to apply." 
    else 
      @discount = 1-@discount/100.to_f
      @total = @total * @discount
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
     @items.delete_at(-1)
    self.total = self.total - @last_transaction
   end
end
>>>>>>> ec2216be7548b336310ee17ee0d9f0cd0982e916
