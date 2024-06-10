require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "Order.count", 1 do
      post "/orders.json",
        params: { product_id: Product.first.id, quantity: 10 },
        headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end
  end
end
