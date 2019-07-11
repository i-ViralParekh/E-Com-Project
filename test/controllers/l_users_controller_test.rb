require 'test_helper'

class LUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @l_user = l_users(:one)
  end

  test "should get index" do
    get l_users_url
    assert_response :success
  end

  test "should get new" do
    get new_l_user_url
    assert_response :success
  end

  test "should create l_user" do
    assert_difference('LUser.count') do
      post l_users_url, params: { l_user: { name: @l_user.name, password: 'secret', password_confirmation: 'secret' } }
    end

    assert_redirected_to l_user_url(LUser.last)
  end

  test "should show l_user" do
    get l_user_url(@l_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_l_user_url(@l_user)
    assert_response :success
  end

  test "should update l_user" do
    patch l_user_url(@l_user), params: { l_user: { name: @l_user.name, password: 'secret', password_confirmation: 'secret' } }
    assert_redirected_to l_user_url(@l_user)
  end

  test "should destroy l_user" do
    assert_difference('LUser.count', -1) do
      delete l_user_url(@l_user)
    end

    assert_redirected_to l_users_url
  end
end
