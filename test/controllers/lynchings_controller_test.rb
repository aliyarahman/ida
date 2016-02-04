require 'test_helper'

class LynchingsControllerTest < ActionController::TestCase
  setup do
    @lynching = lynchings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lynchings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lynching" do
    assert_difference('Lynching.count') do
      post :create, lynching: { allegation: @lynching.allegation, city: @lynching.city, day: @lynching.day, month: @lynching.month, month: @lynching.month, name: @lynching.name, state: @lynching.state, year: @lynching.year }
    end

    assert_redirected_to lynching_path(assigns(:lynching))
  end

  test "should show lynching" do
    get :show, id: @lynching
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lynching
    assert_response :success
  end

  test "should update lynching" do
    patch :update, id: @lynching, lynching: { allegation: @lynching.allegation, city: @lynching.city, day: @lynching.day, month: @lynching.month, month: @lynching.month, name: @lynching.name, state: @lynching.state, year: @lynching.year }
    assert_redirected_to lynching_path(assigns(:lynching))
  end

  test "should destroy lynching" do
    assert_difference('Lynching.count', -1) do
      delete :destroy, id: @lynching
    end

    assert_redirected_to lynchings_path
  end
end
