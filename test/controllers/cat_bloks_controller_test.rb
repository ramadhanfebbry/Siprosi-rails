require 'test_helper'

class CatBloksControllerTest < ActionController::TestCase
  setup do
    @cat_blok = cat_bloks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cat_bloks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cat_blok" do
    assert_difference('CatBlok.count') do
      post :create, cat_blok: { cetak_blok_id: @cat_blok.cetak_blok_id, date: @cat_blok.created_at.to_date, hasil: @cat_blok.hasil, keterangan: @cat_blok.keterangan, rusak: @cat_blok.rusak }
    end

    assert_redirected_to cat_blok_path(assigns(:cat_blok))
  end

  test "should show cat_blok" do
    get :show, id: @cat_blok
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cat_blok
    assert_response :success
  end

  test "should update cat_blok" do
    patch :update, id: @cat_blok, cat_blok: { cetak_blok_id: @cat_blok.cetak_blok_id, date: @cat_blok.created_at.to_date, hasil: @cat_blok.hasil, keterangan: @cat_blok.keterangan, rusak: @cat_blok.rusak }
    assert_redirected_to cat_blok_path(assigns(:cat_blok))
  end

  test "should destroy cat_blok" do
    assert_difference('CatBlok.count', -1) do
      delete :destroy, id: @cat_blok
    end

    assert_redirected_to cat_bloks_path
  end
end
