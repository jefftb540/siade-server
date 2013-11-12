require 'test_helper'

class PesquisasControllerTest < ActionController::TestCase
  setup do
    @pesquisa = pesquisas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pesquisas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pesquisa" do
    assert_difference('Pesquisa.count') do
      post :create, pesquisa: { a1: @pesquisa.a1, a2: @pesquisa.a2, b: @pesquisa.b, c: @pesquisa.c, d1: @pesquisa.d1, d2: @pesquisa.d2, e: @pesquisa.e, imovel_especionado: @pesquisa.imovel_especionado, n_amostra_final: @pesquisa.n_amostra_final, n_amostra_inicial: @pesquisa.n_amostra_inicial, quantidade_tubitos: @pesquisa.quantidade_tubitos }
    end

    assert_redirected_to pesquisa_path(assigns(:pesquisa))
  end

  test "should show pesquisa" do
    get :show, id: @pesquisa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pesquisa
    assert_response :success
  end

  test "should update pesquisa" do
    patch :update, id: @pesquisa, pesquisa: { a1: @pesquisa.a1, a2: @pesquisa.a2, b: @pesquisa.b, c: @pesquisa.c, d1: @pesquisa.d1, d2: @pesquisa.d2, e: @pesquisa.e, imovel_especionado: @pesquisa.imovel_especionado, n_amostra_final: @pesquisa.n_amostra_final, n_amostra_inicial: @pesquisa.n_amostra_inicial, quantidade_tubitos: @pesquisa.quantidade_tubitos }
    assert_redirected_to pesquisa_path(assigns(:pesquisa))
  end

  test "should destroy pesquisa" do
    assert_difference('Pesquisa.count', -1) do
      delete :destroy, id: @pesquisa
    end

    assert_redirected_to pesquisas_path
  end
end
