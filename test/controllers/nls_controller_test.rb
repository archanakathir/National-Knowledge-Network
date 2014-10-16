require 'test_helper'

class NlsControllerTest < ActionController::TestCase
  setup do
    @nl = nls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nl" do
    assert_difference('Nl.count') do
      post :create, nl: { NLD: @nl.NLD, Name: @nl.Name }
    end

    assert_redirected_to nl_path(assigns(:nl))
  end

  test "should show nl" do
    get :show, id: @nl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nl
    assert_response :success
  end

  test "should update nl" do
    patch :update, id: @nl, nl: { NLD: @nl.NLD, Name: @nl.Name }
    assert_redirected_to nl_path(assigns(:nl))
  end

  test "should destroy nl" do
    assert_difference('Nl.count', -1) do
      delete :destroy, id: @nl
    end

    assert_redirected_to nls_path
  end
end
