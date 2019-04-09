require 'test_helper'

class CartOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cart_orders_index_url
    assert_response :success
  end

end
