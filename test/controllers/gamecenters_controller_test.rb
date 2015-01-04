require 'test_helper'

class GamecentersControllerTest < ActionController::TestCase
  setup do
    @gamecenter = gamecenters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gamecenters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gamecenter" do
    assert_difference('Gamecenter.count') do
      post :create, gamecenter: { content: @gamecenter.content, user_id: @gamecenter.user_id }
    end

    assert_redirected_to gamecenter_path(assigns(:gamecenter))
  end

  test "should show gamecenter" do
    get :show, id: @gamecenter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gamecenter
    assert_response :success
  end

  test "should update gamecenter" do
    patch :update, id: @gamecenter, gamecenter: { content: @gamecenter.content, user_id: @gamecenter.user_id }
    assert_redirected_to gamecenter_path(assigns(:gamecenter))
  end

  test "should destroy gamecenter" do
    assert_difference('Gamecenter.count', -1) do
      delete :destroy, id: @gamecenter
    end

    assert_redirected_to gamecenters_path
  end
end
