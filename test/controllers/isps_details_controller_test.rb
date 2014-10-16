require 'test_helper'

class IspsDetailsControllerTest < ActionController::TestCase
  setup do
    @isps_detail = isps_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:isps_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create isps_detail" do
    assert_difference('IspsDetail.count') do
      post :create, isps_detail: { ckt: @isps_detail.ckt, isp: @isps_detail.isp, isp_name: @isps_detail.isp_name }
    end

    assert_redirected_to isps_detail_path(assigns(:isps_detail))
  end

  test "should show isps_detail" do
    get :show, id: @isps_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @isps_detail
    assert_response :success
  end

  test "should update isps_detail" do
    patch :update, id: @isps_detail, isps_detail: { ckt: @isps_detail.ckt, isp: @isps_detail.isp, isp_name: @isps_detail.isp_name }
    assert_redirected_to isps_detail_path(assigns(:isps_detail))
  end

  test "should destroy isps_detail" do
    assert_difference('IspsDetail.count', -1) do
      delete :destroy, id: @isps_detail
    end

    assert_redirected_to isps_details_path
  end
end
