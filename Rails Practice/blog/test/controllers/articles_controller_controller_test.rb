require 'test_helper'

class ArticlesControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get articles_controller_index_url
    assert_response :success
  end

end
