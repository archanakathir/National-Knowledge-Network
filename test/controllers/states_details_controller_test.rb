require 'test_helper'

class StatesDetailsControllerTest < ActionController::TestCase
  setup do
    @states_detail = states_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:states_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create states_detail" do
    assert_difference('StatesDetail.count') do
      post :create, states_detail: { state_name: @states_detail.state_name, stateid: @states_detail.stateid }
    end

    assert_redirected_to states_detail_path(assigns(:states_detail))
  end

  test "should show states_detail" do
    get :show, id: @states_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @states_detail
    assert_response :success
  end

  test "should update states_detail" do
    patch :update, id: @states_detail, states_detail: { state_name: @states_detail.state_name, stateid: @states_detail.stateid }
    assert_redirected_to states_detail_path(assigns(:states_detail))
  end

  test "should destroy states_detail" do
    assert_difference('StatesDetail.count', -1) do
      delete :destroy, id: @states_detail
    end

    assert_redirected_to states_details_path
  end
end
