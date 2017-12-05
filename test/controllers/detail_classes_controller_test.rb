require 'test_helper'

class DetailClassesControllerTest < ActionController::TestCase
  setup do
    @detail_class = detail_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detail_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detail_class" do
    assert_difference('DetailClass.count') do
      post :create, detail_class: { client_id: @detail_class.client_id, comment: @detail_class.comment, header_class_id: @detail_class.header_class_id, state: @detail_class.state, subscription_id: @detail_class.subscription_id }
    end

    assert_redirected_to detail_class_path(assigns(:detail_class))
  end

  test "should show detail_class" do
    get :show, id: @detail_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detail_class
    assert_response :success
  end

  test "should update detail_class" do
    patch :update, id: @detail_class, detail_class: { client_id: @detail_class.client_id, comment: @detail_class.comment, header_class_id: @detail_class.header_class_id, state: @detail_class.state, subscription_id: @detail_class.subscription_id }
    assert_redirected_to detail_class_path(assigns(:detail_class))
  end

  test "should destroy detail_class" do
    assert_difference('DetailClass.count', -1) do
      delete :destroy, id: @detail_class
    end

    assert_redirected_to detail_classes_path
  end
end
