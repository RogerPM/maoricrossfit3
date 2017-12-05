require 'test_helper'

class HeaderClassesControllerTest < ActionController::TestCase
  setup do
    @header_class = header_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:header_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create header_class" do
    assert_difference('HeaderClass.count') do
      post :create, header_class: { date: @header_class.date, end_time: @header_class.end_time, maximum_capacity: @header_class.maximum_capacity, registered: @header_class.registered, service_id: @header_class.service_id, shcedule_id: @header_class.shcedule_id, start_time: @header_class.start_time, teacher: @header_class.teacher }
    end

    assert_redirected_to header_class_path(assigns(:header_class))
  end

  test "should show header_class" do
    get :show, id: @header_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @header_class
    assert_response :success
  end

  test "should update header_class" do
    patch :update, id: @header_class, header_class: { date: @header_class.date, end_time: @header_class.end_time, maximum_capacity: @header_class.maximum_capacity, registered: @header_class.registered, service_id: @header_class.service_id, shcedule_id: @header_class.shcedule_id, start_time: @header_class.start_time, teacher: @header_class.teacher }
    assert_redirected_to header_class_path(assigns(:header_class))
  end

  test "should destroy header_class" do
    assert_difference('HeaderClass.count', -1) do
      delete :destroy, id: @header_class
    end

    assert_redirected_to header_classes_path
  end
end
