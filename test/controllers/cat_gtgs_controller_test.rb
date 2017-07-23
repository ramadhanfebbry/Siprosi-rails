require 'test_helper'

class CatGtgsControllerTest < ActionController::TestCase
  setup do
    @cat_gtg = cat_gtgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cat_gtgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cat_gtg" do
    assert_difference('CatGtg.count') do
      post :create, cat_gtg: { date: @cat_gtg.created_at.to_date, gosok_id: @cat_gtg.gosok_id, hasil: @cat_gtg.hasil, keterangan: @cat_gtg.keterangan, rusak: @cat_gtg.rusak }
    end

    assert_redirected_to cat_gtg_path(assigns(:cat_gtg))
  end

  test "should show cat_gtg" do
    get :show, id: @cat_gtg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cat_gtg
    assert_response :success
  end

  test "should update cat_gtg" do
    patch :update, id: @cat_gtg, cat_gtg: { date: @cat_gtg.created_at.to_date, gosok_id: @cat_gtg.gosok_id, hasil: @cat_gtg.hasil, keterangan: @cat_gtg.keterangan, rusak: @cat_gtg.rusak }
    assert_redirected_to cat_gtg_path(assigns(:cat_gtg))
  end

  test "should destroy cat_gtg" do
    assert_difference('CatGtg.count', -1) do
      delete :destroy, id: @cat_gtg
    end

    assert_redirected_to cat_gtgs_path
  end
end
