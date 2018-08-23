# frozen_string_literal: true

module Depot
  class ShoppingCartItemsController < DepotBaseController
    include CurrentShoppingCart

    before_action :set_shopping_cart, only: [:create]

    def create
      product = Product.find(params[:product_id])
      @shopping_cart_item = @shopping_cart.shopping_cart_items.build(product: product, item_added_at: Time.current)

      respond_to do |format|
        if @shopping_cart_item.save
          format.html { redirect_to(@shopping_cart_item.shopping_cart, notice: "Item added to your shopping cart") }
          format.json { render(:show, status: :created, location: @shopping_cart_item) }
        else
          format.html { redirect_to(@shopping_cart_item.shopping_cart, notice: "Error happened when adding stuff to your cart") }
          format.json { render(json: @shopping_cart_item.errors, status: :unprocessable_entity ) }
        end
      end
    end

    def show

    end
  end
end
