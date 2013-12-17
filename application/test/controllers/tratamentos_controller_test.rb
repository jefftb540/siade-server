require 'test_helper'

class TratamentosControllerTest < ActionController::TestCase
  setup do
    @tratamento = tratamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tratamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tratamento" do
    assert_difference('Tratamento.count') do
      post :create, tratamento: { eliminados: @tratamento.eliminados, imovel_tratado: @tratamento.imovel_tratado, quantidade_deposito_tratado: @tratamento.quantidade_deposito_tratado, quantidade_larvicida: @tratamento.quantidade_larvicida, tipo_larvicida: @tratamento.tipo_larvicida }
    end

    assert_redirected_to tratamento_path(assigns(:tratamento))
  end

  test "should show tratamento" do
    get :show, id: @tratamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tratamento
    assert_response :success
  end

  test "should update tratamento" do
    patch :update, id: @tratamento, tratamento: { eliminados: @tratamento.eliminados, imovel_tratado: @tratamento.imovel_tratado, quantidade_deposito_tratado: @tratamento.quantidade_deposito_tratado, quantidade_larvicida: @tratamento.quantidade_larvicida, tipo_larvicida: @tratamento.tipo_larvicida }
    assert_redirected_to tratamento_path(assigns(:tratamento))
  end

  test "should destroy tratamento" do
    assert_difference('Tratamento.count', -1) do
      delete :destroy, id: @tratamento
    end

    assert_redirected_to tratamentos_path
  end
end
