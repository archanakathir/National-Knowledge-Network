require 'test_helper'

class NationalLongDistancesControllerTest < ActionController::TestCase
  setup do
    @national_long_distance = national_long_distances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:national_long_distances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create national_long_distance" do
    assert_difference('NationalLongDistance.count') do
      post :create, national_long_distance: { nld_name: @national_long_distance.nld_name }
    end

    assert_redirected_to national_long_distance_path(assigns(:national_long_distance))
  end

  test "should show national_long_distance" do
    get :show, id: @national_long_distance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @national_long_distance
    assert_response :success
  end

  test "should update national_long_distance" do
    patch :update, id: @national_long_distance, national_long_distance: { nld_name: @national_long_distance.nld_name }
    assert_redirected_to national_long_distance_path(assigns(:national_long_distance))
  end

  test "should destroy national_long_distance" do
    assert_difference('NationalLongDistance.count', -1) do
      delete :destroy, id: @national_long_distance
    end

    assert_redirected_to national_long_distances_path
  end
end
