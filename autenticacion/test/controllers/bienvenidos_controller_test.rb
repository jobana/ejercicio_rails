require 'test_helper'

class BienvenidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bienvenido = bienvenidos(:one)
  end

  test "should get index" do
    get bienvenidos_url
    assert_response :success
  end

  test "should get new" do
    get new_bienvenido_url
    assert_response :success
  end

  test "should create bienvenido" do
    assert_difference('Bienvenido.count') do
      post bienvenidos_url, params: { bienvenido: { name: @bienvenido.name, usuario: @bienvenido.usuario } }
    end

    assert_redirected_to bienvenido_url(Bienvenido.last)
  end

  test "should show bienvenido" do
    get bienvenido_url(@bienvenido)
    assert_response :success
  end

  test "should get edit" do
    get edit_bienvenido_url(@bienvenido)
    assert_response :success
  end

  test "should update bienvenido" do
    patch bienvenido_url(@bienvenido), params: { bienvenido: { name: @bienvenido.name, usuario: @bienvenido.usuario } }
    assert_redirected_to bienvenido_url(@bienvenido)
  end

  test "should destroy bienvenido" do
    assert_difference('Bienvenido.count', -1) do
      delete bienvenido_url(@bienvenido)
    end

    assert_redirected_to bienvenidos_url
  end
end
