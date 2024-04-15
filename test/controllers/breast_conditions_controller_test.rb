require "test_helper"

class BreastConditionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get breast_conditions_index_url
    assert_response :success
  end

  test "should get new" do
    get breast_conditions_new_url
    assert_response :success
  end

  test "should get create" do
    get breast_conditions_create_url
    assert_response :success
  end

  test "should get edit" do
    get breast_conditions_edit_url
    assert_response :success
  end

  test "should get show" do
    get breast_conditions_show_url
    assert_response :success
  end
end
