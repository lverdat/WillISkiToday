require 'test_helper'

class RunTypesControllerTest < ActionController::TestCase
  setup do
    @run_type = run_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:run_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create run_type" do
    assert_difference('RunType.count') do
      post :create, run_type: @run_type.attributes
    end

    assert_redirected_to run_type_path(assigns(:run_type))
  end

  test "should show run_type" do
    get :show, id: @run_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @run_type
    assert_response :success
  end

  test "should update run_type" do
    put :update, id: @run_type, run_type: @run_type.attributes
    assert_redirected_to run_type_path(assigns(:run_type))
  end

  test "should destroy run_type" do
    assert_difference('RunType.count', -1) do
      delete :destroy, id: @run_type
    end

    assert_redirected_to run_types_path
  end
end
