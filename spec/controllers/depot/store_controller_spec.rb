# frozen_string_literal: true

require "spec_helper"

RSpec.describe Depot::StoreController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index

      expect(response).to be_successful
    end
  end
end
