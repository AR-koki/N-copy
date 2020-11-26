require 'test_helper'

class AvatarsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get avatars_new_url
    assert_response :success
  end

  test "should get index" do
    get avatars_index_url
    assert_response :success
  end

  test "should get show" do
    get avatars_show_url
    assert_response :success
  end

  test "should get edit" do
    get avatars_edit_url
    assert_response :success
  end

end
