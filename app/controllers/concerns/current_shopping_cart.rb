# frozen_string_literal: true

module CurrentShoppingCart
  private

  def set_shopping_cart
    @shopping_cart = Depot::ShoppingCart.find_by(id: session[:shipping_cart_id])

    if @shopping_cart.nil?
      @shopping_cart = Depot::ShoppingCart.create!(
        last_modified_at: Time.current,
        user: Depot::User.first, # TODO: this is wrong! Correct this when figured out how to find current user
      )
      session[:shipping_cart_id] = @shopping_cart.id
    end
  end
end
