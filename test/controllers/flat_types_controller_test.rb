require 'test_helper'

class FlatTypesControllerTest < ActionController::TestCase
  setup do
    @flat_type = flat_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flat_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flat_type" do
    assert_difference('FlatType.count') do
      post :create, flat_type: { name: @flat_type.name }
    end

    assert_redirected_to flat_type_path(assigns(:flat_type))
  end

  test "should show flat_type" do
    get :show, id: @flat_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flat_type
    assert_response :success
  end

  test "should update flat_type" do
    patch :update, id: @flat_type, flat_type: { name: @flat_type.name }
    assert_redirected_to flat_type_path(assigns(:flat_type))
  end

  test "should destroy flat_type" do
    assert_difference('FlatType.count', -1) do
      delete :destroy, id: @flat_type
    end

    assert_redirected_to flat_types_path
  end
end
