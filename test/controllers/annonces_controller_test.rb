require 'test_helper'

class AnnoncesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get annonces_index_url
    assert_response :success
  end

end
