require 'test_helper'

class Api::V1::FormatsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get api_v1_formats_new_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_formats_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_formats_update_url
    assert_response :success
  end

  test "should get edit" do
    get api_v1_formats_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_formats_destroy_url
    assert_response :success
  end

  test "should get index" do
    get api_v1_formats_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_formats_show_url
    assert_response :success
  end

end
