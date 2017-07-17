require 'test_helper'

class CetakBloksControllerTest < ActionController::TestCase
  setup do
    @cetak_blok = cetak_bloks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cetak_bloks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cetak_blok" do
    assert_difference('CetakBlok.count') do
      post :create, cetak_blok: { date: @cetak_blok.date, hasil: @cetak_blok.hasil, ip_id: @cetak_blok.ip_id, keterangan: @cetak_blok.keterangan, rusak: @cetak_blok.rusak }
    end

    assert_redirected_to cetak_blok_path(assigns(:cetak_blok))
  end

  test "should show cetak_blok" do
    get :show, id: @cetak_blok
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cetak_blok
    assert_response :success
  end

  test "should update cetak_blok" do
    patch :update, id: @cetak_blok, cetak_blok: { date: @cetak_blok.date, hasil: @cetak_blok.hasil, ip_id: @cetak_blok.ip_id, keterangan: @cetak_blok.keterangan, rusak: @cetak_blok.rusak }
    assert_redirected_to cetak_blok_path(assigns(:cetak_blok))
  end

  test "should destroy cetak_blok" do
    assert_difference('CetakBlok.count', -1) do
      delete :destroy, id: @cetak_blok
    end

    assert_redirected_to cetak_bloks_path
  end
end
