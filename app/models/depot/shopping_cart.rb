# frozen_string_literal: true

module Depot
  class ShoppingCart < ApplicationRecord
    has_many :shopping_cart_items, dependent: :destroy
    has_many :products, through: :shopping_cart_items

    belongs_to :user
  end
end
