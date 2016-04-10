require 'test_helper'

class SocketsControllerTest < ActionController::TestCase
  test "should get echo" do
    get :echo
    assert_response :success
  end

  test "should get chat" do
    get :chat
    assert_response :success
  end

  test "should get status" do
    get :status
    assert_response :success
  end

end
