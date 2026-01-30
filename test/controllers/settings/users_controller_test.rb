require "test_helper"

class Settings::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get settings_users_show_url
    assert_response :success
  end

  test "should get destroy" do
    get settings_users_destroy_url
    assert_response :success
  end
end
