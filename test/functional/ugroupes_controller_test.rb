require 'test_helper'

class UgroupesControllerTest < ActionController::TestCase
  setup do
    @ugroupe = ugroupes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ugroupes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ugroupe" do
    assert_difference('Ugroupe.count') do
      post :create, ugroupe: @ugroupe.attributes
    end

    assert_redirected_to ugroupe_path(assigns(:ugroupe))
  end

  test "should show ugroupe" do
    get :show, id: @ugroupe.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ugroupe.to_param
    assert_response :success
  end

  test "should update ugroupe" do
    put :update, id: @ugroupe.to_param, ugroupe: @ugroupe.attributes
    assert_redirected_to ugroupe_path(assigns(:ugroupe))
  end

  test "should destroy ugroupe" do
    assert_difference('Ugroupe.count', -1) do
      delete :destroy, id: @ugroupe.to_param
    end

    assert_redirected_to ugroupes_path
  end
end
