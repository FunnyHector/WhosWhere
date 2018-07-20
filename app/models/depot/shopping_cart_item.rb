# frozen_string_literal: true

module Depot
  class ShoppingCartItem < ApplicationRecord
    belongs_to :shopping_cart
    belongs_to :product
  end
end
