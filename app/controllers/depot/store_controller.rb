# frozen_string_literal: true

module Depot
  class StoreController < DepotBaseController
    def index
      @products = Product.order(:title)
    end
  end
end


