require "test_helper"

class Store::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_users_index_url
    assert_response :success
  end

  test "should get show" do
    get store_users_show_url
    assert_response :success
  end

  test "should get edit" do
    get store_users_edit_url
    assert_response :success
  end

  test "should get update" do
    get store_users_update_url
    assert_response :success
  end

  test "should get destroy" do
    get store_users_destroy_url
    assert_response :success
  end
end
