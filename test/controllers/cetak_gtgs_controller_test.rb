require 'test_helper'

class CetakGtgsControllerTest < ActionController::TestCase
  setup do
    @cetak_gtg = cetak_gtgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cetak_gtgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cetak_gtg" do
    assert_difference('CetakGtg.count') do
      post :create, cetak_gtg: { date: @cetak_gtg.created_at.to_date, hasil: @cetak_gtg.hasil, ip_id: @cetak_gtg.ip_id, keterangan: @cetak_gtg.keterangan, rusak: @cetak_gtg.rusak }
    end

    assert_redirected_to cetak_gtg_path(assigns(:cetak_gtg))
  end

  test "should show cetak_gtg" do
    get :show, id: @cetak_gtg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cetak_gtg
    assert_response :success
  end

  test "should update cetak_gtg" do
    patch :update, id: @cetak_gtg, cetak_gtg: { date: @cetak_gtg.created_at.to_date, hasil: @cetak_gtg.hasil, ip_id: @cetak_gtg.ip_id, keterangan: @cetak_gtg.keterangan, rusak: @cetak_gtg.rusak }
    assert_redirected_to cetak_gtg_path(assigns(:cetak_gtg))
  end

  test "should destroy cetak_gtg" do
    assert_difference('CetakGtg.count', -1) do
      delete :destroy, id: @cetak_gtg
    end

    assert_redirected_to cetak_gtgs_path
  end
end
