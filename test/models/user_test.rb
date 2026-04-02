require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Jack Sparrow", email: "jack@example.com", role: "admin", status: "active")
  end

  test "valid user should save" do
    assert @user.save
  end

  test "should not save without name" do
    @user.name = nil
    assert_not @user.save
  end

  test "should not save without email" do
    @user.email = nil
    assert_not @user.save
  end

  test "should not allow duplicate email" do
    @user.save
    duplicate_user = @user.dup
    assert_not duplicate_user.save
  end
end
