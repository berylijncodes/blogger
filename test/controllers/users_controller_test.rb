require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { username: "testuser", email: "test@example.com", password: "password123" } }
    end

    assert_redirected_to article_url(User.last)
    assert_equal "Welcome testuser, You have successfully signed up!", flash[:notice]
  end

  test "should not create user with invalid data" do
    assert_no_difference('User.count') do
      post users_url, params: { user: { username: "", email: "", password: "" } }
    end

    assert_response :unprocessable_entity
  end
end
