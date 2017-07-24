require 'test_helper'

class RpsControllerTest < ActionController::TestCase
  setup do
    @rp = rps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rp" do
    assert_difference('Rp.count') do
      post :create, rp: { date: @rp.created_at.to_date, item_name: @rp.barand.id_barang, ketengaran: @rp.ketengaran, plan_date: @rp.plan_date, schedule_qty: @rp.schedule_qty, site: @rp.site }
    end

    assert_redirected_to rp_path(assigns(:rp))
  end

  test "should show rp" do
    get :show, id: @rp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rp
    assert_response :success
  end

  test "should update rp" do
    patch :update, id: @rp, rp: { date: @rp.created_at.to_date, item_name: @rp.barand.id_barang, ketengaran: @rp.ketengaran, plan_date: @rp.plan_date, schedule_qty: @rp.schedule_qty, site: @rp.site }
    assert_redirected_to rp_path(assigns(:rp))
  end

  test "should destroy rp" do
    assert_difference('Rp.count', -1) do
      delete :destroy, id: @rp
    end

    assert_redirected_to rps_path
  end
end
