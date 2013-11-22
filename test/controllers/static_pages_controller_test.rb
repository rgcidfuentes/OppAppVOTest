require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get servicios" do
    get :servicios
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

  test "should get aviso" do
    get :aviso
    assert_response :success
  end

  test "should get privacidad" do
    get :privacidad
    assert_response :success
  end

end
