require 'test_helper'

class TaidongsControllerTest < ActionController::TestCase
  setup do
    @taidong = taidongs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taidongs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taidong" do
    assert_difference('Taidong.count') do
      post :create, taidong: { account_id: @taidong.account_id, batch_id: @taidong.batch_id, happened_at: @taidong.happened_at }
    end

    assert_redirected_to taidong_path(assigns(:taidong))
  end

  test "should show taidong" do
    get :show, id: @taidong
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taidong
    assert_response :success
  end

  test "should update taidong" do
    patch :update, id: @taidong, taidong: { account_id: @taidong.account_id, batch_id: @taidong.batch_id, happened_at: @taidong.happened_at }
    assert_redirected_to taidong_path(assigns(:taidong))
  end

  test "should destroy taidong" do
    assert_difference('Taidong.count', -1) do
      delete :destroy, id: @taidong
    end

    assert_redirected_to taidongs_path
  end
end
