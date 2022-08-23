class ShoppingCart
  def checkout(discount=0)
    total = 0

    shopping_cart.each do |item|
      total += item.price
    end

    if discount == 10
      total = total - total * 10 / 100.00
    elsif discount == 20
      total = total - total * 20 / 100.00
    elsif discount == 50
      total = total - total * 50 / 100.00
    end

    total

  end

end
