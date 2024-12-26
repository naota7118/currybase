require "test_helper"

class CustomersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup customer" do
    get signup_path
    assert_response :success
    post customers_path, params: { customer: { name: "",
                                               email: "customer@invalid",
                                               password: "foo",
                                               password_confirmation: "bar" } }
    assert_response :unprocessable_entity
    assert_template 'customers/new'
    assert_template partial: 'shared/_error_messages'
  end

  test "valid signup customer" do
    get signup_path
    assert_response :success
    post customers_path, params: { customer: { name: "james",
                                               email: "james@valid",
                                               password: "password",
                                               password_confirmation: "password" } }
    follow_redirect!
    assert_template 'customers/show'
    assert_template 'layouts/application'
  end
end
