require 'test_helper'

class ProposerBienControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get proposer_bien_show_url
    assert_response :success
  end

end
