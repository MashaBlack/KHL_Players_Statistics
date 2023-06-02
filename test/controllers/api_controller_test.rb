require "test_helper"

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get next_image" do
    get api_next_image_url
    assert_response :success
  end

  test "should get prev_image" do
    get api_prev_image_url
    assert_response :success
  end
end
