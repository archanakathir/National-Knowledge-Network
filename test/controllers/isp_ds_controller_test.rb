require 'test_helper'

class IspDsControllerTest < ActionController::TestCase
  setup do
    @isp_d = isp_ds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:isp_ds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create isp_d" do
    assert_difference('IspD.count') do
      post :create, isp_d: { isp: @isp_d.isp, isp_name: @isp_d.isp_name }
    end

    assert_redirected_to isp_d_path(assigns(:isp_d))
  end

  test "should show isp_d" do
    get :show, id: @isp_d
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @isp_d
    assert_response :success
  end

  test "should update isp_d" do
    patch :update, id: @isp_d, isp_d: { isp: @isp_d.isp, isp_name: @isp_d.isp_name }
    assert_redirected_to isp_d_path(assigns(:isp_d))
  end

  test "should destroy isp_d" do
    assert_difference('IspD.count', -1) do
      delete :destroy, id: @isp_d
    end

    assert_redirected_to isp_ds_path
  end
end
