require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

end
