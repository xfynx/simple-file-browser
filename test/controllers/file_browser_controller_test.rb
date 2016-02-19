require 'test_helper'

class FileBrowserControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get goto" do
    get :goto
    assert_response :success
  end

end
