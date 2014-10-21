require 'test_helper'

class IpsDetailsControllerTest < ActionController::TestCase
  setup do
    @ips_detail = ips_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ips_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ips_detail" do
    assert_difference('IpsDetail.count') do
      post :create, ips_detail: { LoopBack4_IP: @ips_detail.LoopBack4_IP, LoopBack6_IP: @ips_detail.LoopBack6_IP, Public_Segment4_ip: @ips_detail.Public_Segment4_ip, Public_Segment6_ip: @ips_detail.Public_Segment6_ip }
    end

    assert_redirected_to ips_detail_path(assigns(:ips_detail))
  end

  test "should show ips_detail" do
    get :show, id: @ips_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ips_detail
    assert_response :success
  end

  test "should update ips_detail" do
    patch :update, id: @ips_detail, ips_detail: { LoopBack4_IP: @ips_detail.LoopBack4_IP, LoopBack6_IP: @ips_detail.LoopBack6_IP, Public_Segment4_ip: @ips_detail.Public_Segment4_ip, Public_Segment6_ip: @ips_detail.Public_Segment6_ip }
    assert_redirected_to ips_detail_path(assigns(:ips_detail))
  end

  test "should destroy ips_detail" do
    assert_difference('IpsDetail.count', -1) do
      delete :destroy, id: @ips_detail
    end

    assert_redirected_to ips_details_path
  end
end
