require 'test_helper'

class IspDetailsControllerTest < ActionController::TestCase
  setup do
    @isp_detail = isp_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:isp_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create isp_detail" do
    assert_difference('IspDetail.count') do
      post :create, isp_detail: { isp_name: @isp_detail.isp_name }
    end

    assert_redirected_to isp_detail_path(assigns(:isp_detail))
  end

  test "should show isp_detail" do
    get :show, id: @isp_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @isp_detail
    assert_response :success
  end

  test "should update isp_detail" do
    patch :update, id: @isp_detail, isp_detail: { isp_name: @isp_detail.isp_name }
    assert_redirected_to isp_detail_path(assigns(:isp_detail))
  end

  test "should destroy isp_detail" do
    assert_difference('IspDetail.count', -1) do
      delete :destroy, id: @isp_detail
    end

    assert_redirected_to isp_details_path
  end
end
