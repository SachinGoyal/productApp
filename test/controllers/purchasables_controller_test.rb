require 'test_helper'

class PurchasablesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get purchasables_index_url
    assert_response :success
  end

  test "should get show" do
    get purchasables_show_url
    assert_response :success
  end

end
