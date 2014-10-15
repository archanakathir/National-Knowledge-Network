require 'test_helper'

class StateDetailsControllerTest < ActionController::TestCase
  setup do
    @state_detail = state_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:state_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create state_detail" do
    assert_difference('StateDetail.count') do
      post :create, state_detail: { state: @state_detail.state, state_name: @state_detail.state_name }
    end

    assert_redirected_to state_detail_path(assigns(:state_detail))
  end

  test "should show state_detail" do
    get :show, id: @state_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @state_detail
    assert_response :success
  end

  test "should update state_detail" do
    patch :update, id: @state_detail, state_detail: { state: @state_detail.state, state_name: @state_detail.state_name }
    assert_redirected_to state_detail_path(assigns(:state_detail))
  end

  test "should destroy state_detail" do
    assert_difference('StateDetail.count', -1) do
      delete :destroy, id: @state_detail
    end

    assert_redirected_to state_details_path
  end
end
