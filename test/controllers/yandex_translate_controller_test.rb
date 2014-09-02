require 'test_helper'

class YandexTranslateControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
