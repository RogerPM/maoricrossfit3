require 'test_helper'

class ShcedulesControllerTest < ActionController::TestCase
  setup do
    @shcedule = shcedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shcedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shcedule" do
    assert_difference('Shcedule.count') do
      post :create, shcedule: { days: @shcedule.days, end_hour: @shcedule.end_hour, end_time: @shcedule.end_time, service_id: @shcedule.service_id, start_hour: @shcedule.start_hour, start_time: @shcedule.start_time, user_id: @shcedule.user_id }
    end

    assert_redirected_to shcedule_path(assigns(:shcedule))
  end

  test "should show shcedule" do
    get :show, id: @shcedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shcedule
    assert_response :success
  end

  test "should update shcedule" do
    patch :update, id: @shcedule, shcedule: { days: @shcedule.days, end_hour: @shcedule.end_hour, end_time: @shcedule.end_time, service_id: @shcedule.service_id, start_hour: @shcedule.start_hour, start_time: @shcedule.start_time, user_id: @shcedule.user_id }
    assert_redirected_to shcedule_path(assigns(:shcedule))
  end

  test "should destroy shcedule" do
    assert_difference('Shcedule.count', -1) do
      delete :destroy, id: @shcedule
    end

    assert_redirected_to shcedules_path
  end
end
