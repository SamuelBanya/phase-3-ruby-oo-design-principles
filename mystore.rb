# NOTE: This is an example in which it could be refactored to include a better 'separation of concerns'
# into separate classes:
class MyStore
  def sign_in(user)
    @user = user
  end

  def current_user
    @user
  end

  def item(item)
    @item = item
  end

  def item_price=(price)
    @item_price = price
  end

  def shopping_cart
    @shopping_cart = []
  end

  def add_item_to_cart(item)
    @shopping_cart << item
  end

end
