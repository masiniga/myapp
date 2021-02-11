require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get home" do
    get home_path
    assert_response :success
    assert_select "title", "Hello world in ENG"
  end

  test "should get FR" do
    get fr_path
    assert_response :success
    assert_select "title", "Hello world in FR"
  end

  test "should get RUS" do
    get rus_path
    assert_response :success
    assert_select "title", "Hello world in RUS"
  end
end
