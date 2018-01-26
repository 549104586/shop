require 'test_helper'

class Admin::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get _state_option" do
    get admin_orders__state_option_url
    assert_response :success
  end

  test "should get index" do
    get admin_orders_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_orders_show_url
    assert_response :success
  end

end
