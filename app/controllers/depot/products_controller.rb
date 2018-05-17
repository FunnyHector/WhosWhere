# frozen_string_literal: true

module Depot
  class ProductsController < ApplicationController
    def index
      @products = Product.all
    end
  end
end
