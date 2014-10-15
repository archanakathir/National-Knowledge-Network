require 'test_helper'

class StateDetails5sControllerTest < ActionController::TestCase
  setup do
    @state_details5 = state_details5s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:state_details5s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create state_details5" do
    assert_difference('StateDetails5.count') do
      post :create, state_details5: { state1_id: @state_details5.state1_id, state_name: @state_details5.state_name }
    end

    assert_redirected_to state_details5_path(assigns(:state_details5))
  end

  test "should show state_details5" do
    get :show, id: @state_details5
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @state_details5
    assert_response :success
  end

  test "should update state_details5" do
    patch :update, id: @state_details5, state_details5: { state1_id: @state_details5.state1_id, state_name: @state_details5.state_name }
    assert_redirected_to state_details5_path(assigns(:state_details5))
  end

  test "should destroy state_details5" do
    assert_difference('StateDetails5.count', -1) do
      delete :destroy, id: @state_details5
    end

    assert_redirected_to state_details5s_path
  end
end
