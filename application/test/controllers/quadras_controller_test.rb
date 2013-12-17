require 'test_helper'

class QuadrasControllerTest < ActionController::TestCase
  setup do
    @quadra = quadras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quadras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quadra" do
    assert_difference('Quadra.count') do
      post :create, quadra: { bairro_id: @quadra.bairro_id, total_c: @quadra.total_c, total_imoveis: @quadra.total_imoveis, total_o: @quadra.total_o, total_pe: @quadra.total_pe, total_r: @quadra.total_r, total_tb: @quadra.total_tb }
    end

    assert_redirected_to quadra_path(assigns(:quadra))
  end

  test "should show quadra" do
    get :show, id: @quadra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quadra
    assert_response :success
  end

  test "should update quadra" do
    patch :update, id: @quadra, quadra: { bairro_id: @quadra.bairro_id, total_c: @quadra.total_c, total_imoveis: @quadra.total_imoveis, total_o: @quadra.total_o, total_pe: @quadra.total_pe, total_r: @quadra.total_r, total_tb: @quadra.total_tb }
    assert_redirected_to quadra_path(assigns(:quadra))
  end

  test "should destroy quadra" do
    assert_difference('Quadra.count', -1) do
      delete :destroy, id: @quadra
    end

    assert_redirected_to quadras_path
  end
end
