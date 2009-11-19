require 'test_helper'

class PpostsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ppost" do
    assert_difference('Ppost.count') do
      post :create, :ppost => { }
    end

    assert_redirected_to ppost_path(assigns(:ppost))
  end

  test "should show ppost" do
    get :show, :id => pposts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pposts(:one).to_param
    assert_response :success
  end

  test "should update ppost" do
    put :update, :id => pposts(:one).to_param, :ppost => { }
    assert_redirected_to ppost_path(assigns(:ppost))
  end

  test "should destroy ppost" do
    assert_difference('Ppost.count', -1) do
      delete :destroy, :id => pposts(:one).to_param
    end

    assert_redirected_to pposts_path
  end
end
