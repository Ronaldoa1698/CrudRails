require "test_helper"

class AvistamientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avistamiento = avistamientos(:one)
  end

  test "should get index" do
    get avistamientos_url
    assert_response :success
  end

  test "should get new" do
    get new_avistamiento_url
    assert_response :success
  end

  test "should create avistamiento" do
    assert_difference("Avistamiento.count") do
      post avistamientos_url, params: { avistamiento: { especie: @avistamiento.especie, familia: @avistamiento.familia, fecha: @avistamiento.fecha, hora: @avistamiento.hora, latitud: @avistamiento.latitud, longitud: @avistamiento.longitud, nombreOrnitologo: @avistamiento.nombreOrnitologo, nombrecientifico: @avistamiento.nombrecientifico, nombrecomun: @avistamiento.nombrecomun } }
    end

    assert_redirected_to avistamiento_url(Avistamiento.last)
  end

  test "should show avistamiento" do
    get avistamiento_url(@avistamiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_avistamiento_url(@avistamiento)
    assert_response :success
  end

  test "should update avistamiento" do
    patch avistamiento_url(@avistamiento), params: { avistamiento: { especie: @avistamiento.especie, familia: @avistamiento.familia, fecha: @avistamiento.fecha, hora: @avistamiento.hora, latitud: @avistamiento.latitud, longitud: @avistamiento.longitud, nombreOrnitologo: @avistamiento.nombreOrnitologo, nombrecientifico: @avistamiento.nombrecientifico, nombrecomun: @avistamiento.nombrecomun } }
    assert_redirected_to avistamiento_url(@avistamiento)
  end

  test "should destroy avistamiento" do
    assert_difference("Avistamiento.count", -1) do
      delete avistamiento_url(@avistamiento)
    end

    assert_redirected_to avistamientos_url
  end
end
