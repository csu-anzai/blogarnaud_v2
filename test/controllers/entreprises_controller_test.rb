require 'test_helper'

class EntreprisesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get entreprises_index_url
    assert_response :success
  end

  test "should get show" do
    get entreprises_show_url
    assert_response :success
  end

  test "should get new" do
    get entreprises_new_url
    assert_response :success
  end

  test "should get create" do
    get entreprises_create_url
    assert_response :success
  end

  test "should get edit" do
    get entreprises_edit_url
    assert_response :success
  end

  test "should get update" do
    get entreprises_update_url
    assert_response :success
  end

  test "should get destroy" do
    get entreprises_destroy_url
    assert_response :success
  end

end
