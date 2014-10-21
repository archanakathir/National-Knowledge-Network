require 'test_helper'

class IpcsControllerTest < ActionController::TestCase
  setup do
    @ipc = ipcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ipcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ipc" do
    assert_difference('Ipc.count') do
      post :create, ipc: { LoopBack4_IP: @ipc.LoopBack4_IP, LoopBack6_IP: @ipc.LoopBack6_IP, Public_Segment4_ip: @ipc.Public_Segment4_ip, Public_Segment6_ip: @ipc.Public_Segment6_ip }
    end

    assert_redirected_to ipc_path(assigns(:ipc))
  end

  test "should show ipc" do
    get :show, id: @ipc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ipc
    assert_response :success
  end

  test "should update ipc" do
    patch :update, id: @ipc, ipc: { LoopBack4_IP: @ipc.LoopBack4_IP, LoopBack6_IP: @ipc.LoopBack6_IP, Public_Segment4_ip: @ipc.Public_Segment4_ip, Public_Segment6_ip: @ipc.Public_Segment6_ip }
    assert_redirected_to ipc_path(assigns(:ipc))
  end

  test "should destroy ipc" do
    assert_difference('Ipc.count', -1) do
      delete :destroy, id: @ipc
    end

    assert_redirected_to ipcs_path
  end
end
