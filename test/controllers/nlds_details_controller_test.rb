require 'test_helper'

class NldsDetailsControllerTest < ActionController::TestCase
  setup do
    @nlds_detail = nlds_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nlds_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nlds_detail" do
    assert_difference('NldsDetail.count') do
      post :create, nlds_detail: { nld: @nlds_detail.nld, nld_name: @nlds_detail.nld_name }
    end

    assert_redirected_to nlds_detail_path(assigns(:nlds_detail))
  end

  test "should show nlds_detail" do
    get :show, id: @nlds_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nlds_detail
    assert_response :success
  end

  test "should update nlds_detail" do
    patch :update, id: @nlds_detail, nlds_detail: { nld: @nlds_detail.nld, nld_name: @nlds_detail.nld_name }
    assert_redirected_to nlds_detail_path(assigns(:nlds_detail))
  end

  test "should destroy nlds_detail" do
    assert_difference('NldsDetail.count', -1) do
      delete :destroy, id: @nlds_detail
    end

    assert_redirected_to nlds_details_path
  end
end
