require "test_helper"

class CustomerTest < ActiveSupport::TestCase

  def setup
    @valid_customer = Customer.create(name: 'andrew', email: "andrew@email.com", password: "password", password_confirmation: "password")
    @invalid_customer = Customer.new(name: 'andrew', email: "andrew@email.com")
    @another_customer = Customer.new(name: 'kevin', email: "kevin@email.com", password: "password", password_confirmation: "password")
  end

  test "should be valid" do
    assert @valid_customer.valid?
  end

  test "should be invalid" do
    assert_not @invalid_customer.valid?
  end

  test "can't signup if name is empty" do
    @valid_customer.name = ''
    assert_not @valid_customer.valid?
  end

  test "can't use the same email as others" do
    @another_customer.email = @valid_customer.email.dup
    assert_not @another_customer.valid?
  end
end
