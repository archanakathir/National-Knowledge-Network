require 'test_helper'

class CategoryDetailsControllerTest < ActionController::TestCase
  setup do
    @category_detail = category_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_detail" do
    assert_difference('CategoryDetail.count') do
      post :create, category_detail: { category: @category_detail.category, category_name: @category_detail.category_name }
    end

    assert_redirected_to category_detail_path(assigns(:category_detail))
  end

  test "should show category_detail" do
    get :show, id: @category_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_detail
    assert_response :success
  end

  test "should update category_detail" do
    patch :update, id: @category_detail, category_detail: { category: @category_detail.category, category_name: @category_detail.category_name }
    assert_redirected_to category_detail_path(assigns(:category_detail))
  end

  test "should destroy category_detail" do
    assert_difference('CategoryDetail.count', -1) do
      delete :destroy, id: @category_detail
    end

    assert_redirected_to category_details_path
  end
end
