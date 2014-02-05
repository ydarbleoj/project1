require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get accept" do
    get :accept
    assert_response :success
  end

  test "should get deny" do
    get :deny
    assert_response :success
  end

  test "should get complete" do
    get :complete
    assert_response :success
  end

end
