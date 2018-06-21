# frozen_string_literal: true

module NullifyBlankValues
  def nullify_blank_values(*attributes)
    attributes.each do |attribute|
      next if self[attribute].in?([true, false])

      self[attribute] = nil if self[attribute].blank?
    end
  end
end
