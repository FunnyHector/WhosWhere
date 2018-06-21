# frozen_string_literal: true

module Depot
  class ProductsController < ApplicationController
    before_action :find_product, only: [:show, :edit, :destroy, :update]

    def index
      @products = Product.all
    end

    def show
    end

    def new
      @product = Product.new
    end

    def create
      @product = Product.new(product_params)

      if @product.save
        redirect_to depot_product_path(@product), notice: 'Product was successfully created.'
      else
        render :new
      end
    end

    def edit
    end

    def update
      @product = Product.update(product_params)

      if @product.save
        redirect_to depot_product_path(@product), notice: 'Product was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      if @product.destroy
        redirect_to depot_products_path, notice: 'Product was successfully destroyed.'
      else
        redirect_to depot_products_path
      end
    end

    private

    def find_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:depot_product).permit(:title, :description, :image_url, :price)
    end
  end
end
