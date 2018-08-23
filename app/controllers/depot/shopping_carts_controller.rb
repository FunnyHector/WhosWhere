# frozen_string_literal: true

module Depot
  class ShoppingCartsController < DepotBaseController
    def show
      @shopping_cart = ShoppingCart.find(params[:id])
    end
  end
end
