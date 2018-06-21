# frozen_string_literal: true

module Depot
  class Product < ApplicationRecord
    include NullifyBlankValues

    before_save :nullify_blank_values
  end
end
