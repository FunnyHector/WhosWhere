# frozen_string_literal: true

module Depot
  class Product < ApplicationRecord
    include NullifyBlankValues

    validates :description, presence: true
    validates :image_url, allow_blank: true,
              format: { with: /\.(gif|jpg|jpeg|png)\z/i, message: "must be a URL for GIF, JPG, JPEG, or PNG image" }

    validates :title, presence: true, uniqueness: true
    validates :price, presence: true,
              format: { with: /\A\d+(?:\.\d{2})?\z/ },
              numericality: { greater_than_or_equal_to: 0.00, less_than: 1000000 }

    before_save :nullify_blank_values
  end
end
