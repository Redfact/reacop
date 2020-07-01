require 'test_helper'

class VentesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get ventes_show_url
    assert_response :success
  end

end
