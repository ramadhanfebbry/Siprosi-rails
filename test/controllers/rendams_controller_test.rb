require 'test_helper'

class RendamsControllerTest < ActionController::TestCase
  setup do
    @rendam = rendams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rendams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rendam" do
    assert_difference('Rendam.count') do
      post :create, rendam: { cetak_gtg_id: @rendam.cetak_gtg_id, date: @rendam.date, hasil: @rendam.hasil, keterangan: @rendam.keterangan, rusak: @rendam.rusak }
    end

    assert_redirected_to rendam_path(assigns(:rendam))
  end

  test "should show rendam" do
    get :show, id: @rendam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rendam
    assert_response :success
  end

  test "should update rendam" do
    patch :update, id: @rendam, rendam: { cetak_gtg_id: @rendam.cetak_gtg_id, date: @rendam.date, hasil: @rendam.hasil, keterangan: @rendam.keterangan, rusak: @rendam.rusak }
    assert_redirected_to rendam_path(assigns(:rendam))
  end

  test "should destroy rendam" do
    assert_difference('Rendam.count', -1) do
      delete :destroy, id: @rendam
    end

    assert_redirected_to rendams_path
  end
end
