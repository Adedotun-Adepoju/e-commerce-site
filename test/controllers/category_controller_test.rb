require "test_helper"

class CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get category" do
    get category_category_url
    assert_response :success
  end
end
