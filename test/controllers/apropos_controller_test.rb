require 'test_helper'

class AproposControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get apropos_show_url
    assert_response :success
  end

end
