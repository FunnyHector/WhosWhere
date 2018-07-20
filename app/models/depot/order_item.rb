# frozen_string_literal: true

module Depot
  class OrderItem < ApplicationRecord
    belongs_to :order
    belongs_to :product
  end
end
