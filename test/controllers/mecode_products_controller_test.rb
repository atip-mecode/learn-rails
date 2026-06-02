require "test_helper"

class MecodeProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mecode_products_index_url
    assert_response :success
  end
end
