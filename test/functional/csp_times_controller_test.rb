require 'test_helper'

class CspTimesControllerTest < ActionController::TestCase
  setup do
    @csp_time = csp_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:csp_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create csp_time" do
    assert_difference('CspTime.count') do
      post :create, :csp_time => {  }
    end

    assert_redirected_to csp_time_path(assigns(:csp_time))
  end

  test "should show csp_time" do
    get :show, :id => @csp_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @csp_time
    assert_response :success
  end

  test "should update csp_time" do
    put :update, :id => @csp_time, :csp_time => {  }
    assert_redirected_to csp_time_path(assigns(:csp_time))
  end

  test "should destroy csp_time" do
    assert_difference('CspTime.count', -1) do
      delete :destroy, :id => @csp_time
    end

    assert_redirected_to csp_times_path
  end
end
