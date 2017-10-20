require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get resources" do
    get pages_resources_url
    assert_response :success
  end

end
