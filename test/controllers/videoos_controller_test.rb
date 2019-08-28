require 'test_helper'

class VideoosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @videoo = videoos(:one)
  end

  test "should get index" do
    get videoos_url
    assert_response :success
  end

  test "should get new" do
    get new_videoo_url
    assert_response :success
  end

  test "should create videoo" do
    assert_difference('Videoo.count') do
      post videoos_url, params: { videoo: { description: @videoo.description, title: @videoo.title } }
    end

    assert_redirected_to videoo_url(Videoo.last)
  end

  test "should show videoo" do
    get videoo_url(@videoo)
    assert_response :success
  end

  test "should get edit" do
    get edit_videoo_url(@videoo)
    assert_response :success
  end

  test "should update videoo" do
    patch videoo_url(@videoo), params: { videoo: { description: @videoo.description, title: @videoo.title } }
    assert_redirected_to videoo_url(@videoo)
  end

  test "should destroy videoo" do
    assert_difference('Videoo.count', -1) do
      delete videoo_url(@videoo)
    end

    assert_redirected_to videoos_url
  end
end
