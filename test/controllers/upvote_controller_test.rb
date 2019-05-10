require 'test_helper'

class UpvoteControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get upvote_new_url
    assert_response :success
  end

end
