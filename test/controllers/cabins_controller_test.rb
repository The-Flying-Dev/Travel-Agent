require "test_helper"

class CabinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cabin = cabins(:one)
  end

  test "should get index" do
    get cabins_url
    assert_response :success
  end

  test "should get new" do
    get new_cabin_url
    assert_response :success
  end

  test "should create cabin" do
    assert_difference('Cabin.count') do
      post cabins_url, params: { cabin: { beds: @cabin.beds, name: @cabin.name, section: @cabin.section, train_id: @cabin.train_id } }
    end

    assert_redirected_to cabin_url(Cabin.last)
  end

  test "should show cabin" do
    get cabin_url(@cabin)
    assert_response :success
  end

  test "should get edit" do
    get edit_cabin_url(@cabin)
    assert_response :success
  end

  test "should update cabin" do
    patch cabin_url(@cabin), params: { cabin: { beds: @cabin.beds, name: @cabin.name, section: @cabin.section, train_id: @cabin.train_id } }
    assert_redirected_to cabin_url(@cabin)
  end

  test "should destroy cabin" do
    assert_difference('Cabin.count', -1) do
      delete cabin_url(@cabin)
    end

    assert_redirected_to cabins_url
  end
end
