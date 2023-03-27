require "application_system_test_case"

class AvistamientosTest < ApplicationSystemTestCase
  setup do
    @avistamiento = avistamientos(:one)
  end

  test "visiting the index" do
    visit avistamientos_url
    assert_selector "h1", text: "Avistamientos"
  end

  test "should create avistamiento" do
    visit avistamientos_url
    click_on "New avistamiento"

    fill_in "Especie", with: @avistamiento.especie
    fill_in "Familia", with: @avistamiento.familia
    fill_in "Fecha", with: @avistamiento.fecha
    fill_in "Hora", with: @avistamiento.hora
    fill_in "Latitud", with: @avistamiento.latitud
    fill_in "Longitud", with: @avistamiento.longitud
    fill_in "Nombreornitologo", with: @avistamiento.nombreOrnitologo
    fill_in "Nombrecientifico", with: @avistamiento.nombrecientifico
    fill_in "Nombrecomun", with: @avistamiento.nombrecomun
    click_on "Create Avistamiento"

    assert_text "Avistamiento was successfully created"
    click_on "Back"
  end

  test "should update Avistamiento" do
    visit avistamiento_url(@avistamiento)
    click_on "Edit this avistamiento", match: :first

    fill_in "Especie", with: @avistamiento.especie
    fill_in "Familia", with: @avistamiento.familia
    fill_in "Fecha", with: @avistamiento.fecha
    fill_in "Hora", with: @avistamiento.hora
    fill_in "Latitud", with: @avistamiento.latitud
    fill_in "Longitud", with: @avistamiento.longitud
    fill_in "Nombreornitologo", with: @avistamiento.nombreOrnitologo
    fill_in "Nombrecientifico", with: @avistamiento.nombrecientifico
    fill_in "Nombrecomun", with: @avistamiento.nombrecomun
    click_on "Update Avistamiento"

    assert_text "Avistamiento was successfully updated"
    click_on "Back"
  end

  test "should destroy Avistamiento" do
    visit avistamiento_url(@avistamiento)
    click_on "Destroy this avistamiento", match: :first

    assert_text "Avistamiento was successfully destroyed"
  end
end
