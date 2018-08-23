require 'spec_helper'

describe Depot::Product, type: :model do
  describe "before_destroy" do
    let(:product) { Depot::Product.create!(
      title: "GoldenBabyTear",
      description: "Not related to Trump",
      price: 99.99,
    ) }

    context "when the product is still referenced by a shopping cart" do
      let(:user) { Depot::User.create!(
        first_name: "Trump",
        last_name: "McDonald",
        email_address: "him@us.net",
      ) }

      let(:shopping_cart) { Depot::ShoppingCart.create!(
        last_modified_at: Time.current,
        user: user,
      ) }

      before do
        product.shopping_cart_items.create!(
          shopping_cart: shopping_cart,
          item_added_at: Time.current,
        )
      end

      it "cannot be deleted" do
        expect { product.destroy }.not_to change { Depot::Product.count }
      end
    end

    context "when the product is not referenced by any shopping cart" do
      it "can be deleted successfully" do
        product.destroy

        expect(Depot::Product.all).not_to include(product)
      end
    end
  end
end
