require 'test_helper'

class ProductQuantitiesControllerTest < ActionController::TestCase
  setup do
    @product_quantity = product_quantities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_quantities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_quantity" do
    assert_difference('ProductQuantity.count') do
      post :create, product_quantity: { product_id: @product_quantity.product_id, quantity: @product_quantity.quantity, sale_id: @product_quantity.sale_id, subtotal: @product_quantity.subtotal }
    end

    assert_redirected_to product_quantity_path(assigns(:product_quantity))
  end

  test "should show product_quantity" do
    get :show, id: @product_quantity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_quantity
    assert_response :success
  end

  test "should update product_quantity" do
    patch :update, id: @product_quantity, product_quantity: { product_id: @product_quantity.product_id, quantity: @product_quantity.quantity, sale_id: @product_quantity.sale_id, subtotal: @product_quantity.subtotal }
    assert_redirected_to product_quantity_path(assigns(:product_quantity))
  end

  test "should destroy product_quantity" do
    assert_difference('ProductQuantity.count', -1) do
      delete :destroy, id: @product_quantity
    end

    assert_redirected_to product_quantities_path
  end
end
