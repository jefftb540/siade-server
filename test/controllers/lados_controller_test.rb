require 'test_helper'

class LadosControllerTest < ActionController::TestCase
  setup do
    @lado = lados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lado" do
    assert_difference('Lado.count') do
      post :create, lado: { quadra_id: @lado.quadra_id, referencia: @lado.referencia, rua_id: @lado.rua_id }
    end

    assert_redirected_to lado_path(assigns(:lado))
  end

  test "should show lado" do
    get :show, id: @lado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lado
    assert_response :success
  end

  test "should update lado" do
    patch :update, id: @lado, lado: { quadra_id: @lado.quadra_id, referencia: @lado.referencia, rua_id: @lado.rua_id }
    assert_redirected_to lado_path(assigns(:lado))
  end

  test "should destroy lado" do
    assert_difference('Lado.count', -1) do
      delete :destroy, id: @lado
    end

    assert_redirected_to lados_path
  end
end
