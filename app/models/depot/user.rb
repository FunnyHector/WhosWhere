# frozen_string_literal: true

module Depot
  class User < ApplicationRecord
    has_one :shopping_cart
    has_many :orders

    def products_bought
      orders.map(:products).flatten.uniq
    end
  end
end
