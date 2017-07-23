require 'test_helper'

class IpsControllerTest < ActionController::TestCase
  setup do
    @ip = ips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ip" do
    assert_difference('Ip.count') do
      post :create, ip: { date: @ip.created_at.to_date, item_name: @ip.item_name, keterangan: @ip.keterangan, plan_date: @ip.plan_date, schedule_qty: @ip.schedule_qty }
    end

    assert_redirected_to ip_path(assigns(:ip))
  end

  test "should show ip" do
    get :show, id: @ip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ip
    assert_response :success
  end

  test "should update ip" do
    patch :update, id: @ip, ip: { date: @ip.created_at.to_date, item_name: @ip.item_name, keterangan: @ip.keterangan, plan_date: @ip.plan_date, schedule_qty: @ip.schedule_qty }
    assert_redirected_to ip_path(assigns(:ip))
  end

  test "should destroy ip" do
    assert_difference('Ip.count', -1) do
      delete :destroy, id: @ip
    end

    assert_redirected_to ips_path
  end
end
