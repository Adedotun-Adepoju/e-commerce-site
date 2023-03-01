require "test_helper"

class ItemControllerTest < ActionDispatch::IntegrationTest
  test "should get item" do
    get item_item_url
    assert_response :success
  end
end
