require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user=User.new(name:"Example name",email:"abc@xyz.com")
  end
  test "valid or not" do
    assert @user.valid?
  end

  test "name cannot be blank" do
    @user.name="   "
    assert_not @user.valid?
  end

  # test "the truth" do
  #   assert true
  # end
end
