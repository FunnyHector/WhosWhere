# frozen_string_literal: true

module Depot
  class DepotBaseController < ActionController::Base
    SUB_APP_NAME = "depot"

    layout "depot"

    before_action :remove_sub_app_prefix_from_params, only: [:create, :update]

    private

    def remove_sub_app_prefix_from_params
      params.transform_keys! do |key|
        key = key.to_s

        if key.to_s.start_with?(SUB_APP_NAME)
          key = key[(SUB_APP_NAME.size + 1)..-1]
        end

        key.to_sym
      end
    end
  end
end
