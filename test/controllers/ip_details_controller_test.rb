require 'test_helper'

class IpDetailsControllerTest < ActionController::TestCase
  setup do
    @ip_detail = ip_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ip_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ip_detail" do
    assert_difference('IpDetail.count') do
      post :create, ip_detail: { LoopBack4_IP: @ip_detail.LoopBack4_IP, LoopBack6_IP: @ip_detail.LoopBack6_IP, Public_Segment4_ip: @ip_detail.Public_Segment4_ip, Public_Segment6_ip: @ip_detail.Public_Segment6_ip }
    end

    assert_redirected_to ip_detail_path(assigns(:ip_detail))
  end

  test "should show ip_detail" do
    get :show, id: @ip_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ip_detail
    assert_response :success
  end

  test "should update ip_detail" do
    patch :update, id: @ip_detail, ip_detail: { LoopBack4_IP: @ip_detail.LoopBack4_IP, LoopBack6_IP: @ip_detail.LoopBack6_IP, Public_Segment4_ip: @ip_detail.Public_Segment4_ip, Public_Segment6_ip: @ip_detail.Public_Segment6_ip }
    assert_redirected_to ip_detail_path(assigns(:ip_detail))
  end

  test "should destroy ip_detail" do
    assert_difference('IpDetail.count', -1) do
      delete :destroy, id: @ip_detail
    end

    assert_redirected_to ip_details_path
  end
end
