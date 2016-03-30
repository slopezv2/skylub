require 'test_helper'

class DivisionControllerTest < ActionController::TestCase
  test "should get combustibles" do
    get :combustibles
    assert_response :success
  end

  test "should get lubricantes" do
    get :lubricantes
    assert_response :success
  end

  test "should get metalmecanica" do
    get :metalmecanica
    assert_response :success
  end

end
