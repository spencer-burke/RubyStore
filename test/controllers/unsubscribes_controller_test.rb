require "test_helper"

class UnsubscribesControllerTest < ActionDispatch::IntegrationTest
  test "should get only" do
    get unsubscribes_only_url
    assert_response :success
  end

  test "should get show" do
    get unsubscribes_show_url
    assert_response :success
  end
end
