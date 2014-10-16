require 'test_helper'

class Isps1sControllerTest < ActionController::TestCase
  setup do
    @isps1 = isps1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:isps1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create isps1" do
    assert_difference('Isps1.count') do
      post :create, isps1: { isp_id: @isps1.isp_id, isp_name: @isps1.isp_name }
    end

    assert_redirected_to isps1_path(assigns(:isps1))
  end

  test "should show isps1" do
    get :show, id: @isps1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @isps1
    assert_response :success
  end

  test "should update isps1" do
    patch :update, id: @isps1, isps1: { isp_id: @isps1.isp_id, isp_name: @isps1.isp_name }
    assert_redirected_to isps1_path(assigns(:isps1))
  end

  test "should destroy isps1" do
    assert_difference('Isps1.count', -1) do
      delete :destroy, id: @isps1
    end

    assert_redirected_to isps1s_path
  end
end
