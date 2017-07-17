require 'test_helper'

class HpsControllerTest < ActionController::TestCase
  setup do
    @hp = hps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hp" do
    assert_difference('Hp.count') do
      post :create, hp: { hasil_produksi: @hp.hasil_produksi, ip_id: @hp.ip_id, rp_id: @hp.rp_id, target_produksi: @hp.target_produksi }
    end

    assert_redirected_to hp_path(assigns(:hp))
  end

  test "should show hp" do
    get :show, id: @hp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hp
    assert_response :success
  end

  test "should update hp" do
    patch :update, id: @hp, hp: { hasil_produksi: @hp.hasil_produksi, ip_id: @hp.ip_id, rp_id: @hp.rp_id, target_produksi: @hp.target_produksi }
    assert_redirected_to hp_path(assigns(:hp))
  end

  test "should destroy hp" do
    assert_difference('Hp.count', -1) do
      delete :destroy, id: @hp
    end

    assert_redirected_to hps_path
  end
end
