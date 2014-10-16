require 'test_helper'

class NldsControllerTest < ActionController::TestCase
  setup do
    @nld = nlds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nlds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nld" do
    assert_difference('Nld.count') do
      post :create, nld: { NLD: @nld.NLD, Name: @nld.Name }
    end

    assert_redirected_to nld_path(assigns(:nld))
  end

  test "should show nld" do
    get :show, id: @nld
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nld
    assert_response :success
  end

  test "should update nld" do
    patch :update, id: @nld, nld: { NLD: @nld.NLD, Name: @nld.Name }
    assert_redirected_to nld_path(assigns(:nld))
  end

  test "should destroy nld" do
    assert_difference('Nld.count', -1) do
      delete :destroy, id: @nld
    end

    assert_redirected_to nlds_path
  end
end
