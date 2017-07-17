require 'test_helper'

class PbsControllerTest < ActionController::TestCase
  setup do
    @pb = pbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pb" do
    assert_difference('Pb.count') do
      post :create, pb: { date: @pb.date, rp_id: @pb.rp_id, status: @pb.status }
    end

    assert_redirected_to pb_path(assigns(:pb))
  end

  test "should show pb" do
    get :show, id: @pb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pb
    assert_response :success
  end

  test "should update pb" do
    patch :update, id: @pb, pb: { date: @pb.date, rp_id: @pb.rp_id, status: @pb.status }
    assert_redirected_to pb_path(assigns(:pb))
  end

  test "should destroy pb" do
    assert_difference('Pb.count', -1) do
      delete :destroy, id: @pb
    end

    assert_redirected_to pbs_path
  end
end
