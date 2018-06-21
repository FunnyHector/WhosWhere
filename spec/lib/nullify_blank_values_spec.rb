# frozen_string_literal: true

require "spec_helper"

describe NullifyBlankValues do
  subject(:mock_model) { Mock.new }

  context "when the value is a Boolean" do
    before do
      mock_model[:boolean] = false
    end

    it "ignores the value" do
      mock_model.nullify_blank_values(:boolean)

      expect(mock_model[:boolean]).to be false
    end
  end

  context "when the value is blank" do
    before do
      mock_model[:string] = ""
    end

    it "nullifies the value" do
      mock_model.nullify_blank_values(:string)

      expect(mock_model[:string]).to be nil
    end
  end

  context "when the value is not blank" do
    before do
      mock_model[:string] = "Geez"
    end

    it "doesn't touch the value" do
      expect {
        mock_model.nullify_blank_values(:string)
      }.not_to change { mock_model[:string] }
    end
  end

  class Mock
    include NullifyBlankValues

    def initialize
      @attributes = {}
    end

    def [](attribute)
      @attributes[attribute]
    end

    def []=(attribute, value)
      @attributes[attribute] = value
    end
  end
end
