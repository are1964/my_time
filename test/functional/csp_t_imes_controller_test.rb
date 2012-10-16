require 'test_helper'

class CspTImesControllerTest < ActionController::TestCase
  setup do
    @csp_t_ime = csp_t_imes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:csp_t_imes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create csp_t_ime" do
    assert_difference('CspTIme.count') do
      post :create, :csp_t_ime => {  }
    end

    assert_redirected_to csp_t_ime_path(assigns(:csp_t_ime))
  end

  test "should show csp_t_ime" do
    get :show, :id => @csp_t_ime
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @csp_t_ime
    assert_response :success
  end

  test "should update csp_t_ime" do
    put :update, :id => @csp_t_ime, :csp_t_ime => {  }
    assert_redirected_to csp_t_ime_path(assigns(:csp_t_ime))
  end

  test "should destroy csp_t_ime" do
    assert_difference('CspTIme.count', -1) do
      delete :destroy, :id => @csp_t_ime
    end

    assert_redirected_to csp_t_imes_path
  end
end
