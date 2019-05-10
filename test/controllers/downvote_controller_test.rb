require 'test_helper'

class DownvoteControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get downvote_new_url
    assert_response :success
  end

end
