require "test_helper"

class MecodeProductTest < ActiveSupport::TestCase
  include ActionMailer::TestHelper

    test "sends email notifications when back in stock" do
      product = mecode_products(:one)

      # Set product out of stock
      product.update(inventory_count: 0)

      assert_emails 2 do
        product.update(inventory_count: 99)
      end
    end
end
