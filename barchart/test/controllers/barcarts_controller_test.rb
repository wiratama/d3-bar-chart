require 'test_helper'

class BarcartsControllerTest < ActionController::TestCase
  setup do
    @barcart = barcarts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barcarts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barcart" do
    assert_difference('Barcart.count') do
      post :create, barcart: {  }
    end

    assert_redirected_to barcart_path(assigns(:barcart))
  end

  test "should show barcart" do
    get :show, id: @barcart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barcart
    assert_response :success
  end

  test "should update barcart" do
    patch :update, id: @barcart, barcart: {  }
    assert_redirected_to barcart_path(assigns(:barcart))
  end

  test "should destroy barcart" do
    assert_difference('Barcart.count', -1) do
      delete :destroy, id: @barcart
    end

    assert_redirected_to barcarts_path
  end
end
