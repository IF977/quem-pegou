require 'test_helper'

class LivrosControllerTest < ActionController::TestCase
  setup do
    @livro = livros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:livros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create livro" do
    assert_difference('Livro.count') do
      post :create, livro: { autor: @livro.autor, dataEmprestimo: @livro.dataEmprestimo, dataEntrega: @livro.dataEntrega, dataPublicacao: @livro.dataPublicacao, nome: @livro.nome, usuario_id: @livro.usuario_id }
    end

    assert_redirected_to livro_path(assigns(:livro))
  end

  test "should show livro" do
    get :show, id: @livro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @livro
    assert_response :success
  end

  test "should update livro" do
    patch :update, id: @livro, livro: { autor: @livro.autor, dataEmprestimo: @livro.dataEmprestimo, dataEntrega: @livro.dataEntrega, dataPublicacao: @livro.dataPublicacao, nome: @livro.nome, usuario_id: @livro.usuario_id }
    assert_redirected_to livro_path(assigns(:livro))
  end

  test "should destroy livro" do
    assert_difference('Livro.count', -1) do
      delete :destroy, id: @livro
    end

    assert_redirected_to livros_path
  end
end