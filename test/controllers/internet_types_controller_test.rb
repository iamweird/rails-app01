require 'test_helper'

class InternetTypesControllerTest < ActionController::TestCase
  setup do
    @internet_type = internet_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:internet_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create internet_type" do
    assert_difference('InternetType.count') do
      post :create, internet_type: { name: @internet_type.name }
    end

    assert_redirected_to internet_type_path(assigns(:internet_type))
  end

  test "should show internet_type" do
    get :show, id: @internet_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @internet_type
    assert_response :success
  end

  test "should update internet_type" do
    patch :update, id: @internet_type, internet_type: { name: @internet_type.name }
    assert_redirected_to internet_type_path(assigns(:internet_type))
  end

  test "should destroy internet_type" do
    assert_difference('InternetType.count', -1) do
      delete :destroy, id: @internet_type
    end

    assert_redirected_to internet_types_path
  end
end
