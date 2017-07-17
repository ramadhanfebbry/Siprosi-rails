require 'test_helper'

class GosoksControllerTest < ActionController::TestCase
  setup do
    @gosok = gosoks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gosoks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gosok" do
    assert_difference('Gosok.count') do
      post :create, gosok: { date: @gosok.date, hasil: @gosok.hasil, keterangan: @gosok.keterangan, rendam_id: @gosok.rendam_id, rusak: @gosok.rusak }
    end

    assert_redirected_to gosok_path(assigns(:gosok))
  end

  test "should show gosok" do
    get :show, id: @gosok
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gosok
    assert_response :success
  end

  test "should update gosok" do
    patch :update, id: @gosok, gosok: { date: @gosok.date, hasil: @gosok.hasil, keterangan: @gosok.keterangan, rendam_id: @gosok.rendam_id, rusak: @gosok.rusak }
    assert_redirected_to gosok_path(assigns(:gosok))
  end

  test "should destroy gosok" do
    assert_difference('Gosok.count', -1) do
      delete :destroy, id: @gosok
    end

    assert_redirected_to gosoks_path
  end
end
