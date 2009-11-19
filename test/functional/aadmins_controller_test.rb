require 'test_helper'

class AadminsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aadmins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aadmin" do
    assert_difference('Aadmin.count') do
      post :create, :aadmin => { }
    end

    assert_redirected_to aadmin_path(assigns(:aadmin))
  end

  test "should show aadmin" do
    get :show, :id => aadmins(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => aadmins(:one).to_param
    assert_response :success
  end

  test "should update aadmin" do
    put :update, :id => aadmins(:one).to_param, :aadmin => { }
    assert_redirected_to aadmin_path(assigns(:aadmin))
  end

  test "should destroy aadmin" do
    assert_difference('Aadmin.count', -1) do
      delete :destroy, :id => aadmins(:one).to_param
    end

    assert_redirected_to aadmins_path
  end
end
