class ShoppingCartRefactored
  attr_accessor :coupon

  def checkout
    total = 0
    # the 'shopping_cart' method holds an array of all the user's items
    shopping_cart.each do |item|
      total += item.price
    end

    if coupon
      total = total - total * coupon / 100.00
    end

    total

  end

  def checkout_refactored
    total = shopping_cart.sum { |item| item.price }
  end
end
