require "test_helper"

class Settings::EmailsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get settings_emails_show_url
    assert_response :success
  end

  test "should get update" do
    get settings_emails_update_url
    assert_response :success
  end
end
