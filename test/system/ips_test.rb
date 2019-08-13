require "application_system_test_case"

class IpsTest < ApplicationSystemTestCase
  setup do
    @ip = ips(:one)
  end

  test "visiting the index" do
    visit ips_url
    assert_selector "h1", text: "Ips"
  end

  test "creating a Ip" do
    visit ips_url
    click_on "New Ip"

    fill_in "Acessos", with: @ip.acessos_id
    fill_in "Data fim", with: @ip.data_fim
    fill_in "Data inicio", with: @ip.data_inicio
    fill_in "Filial", with: @ip.filial_id
    fill_in "Ip", with: @ip.ip
    fill_in "Setor", with: @ip.setor
    fill_in "Usuario", with: @ip.usuario
    click_on "Create Ip"

    assert_text "Ip was successfully created"
    click_on "Back"
  end

  test "updating a Ip" do
    visit ips_url
    click_on "Edit", match: :first

    fill_in "Acessos", with: @ip.acessos_id
    fill_in "Data fim", with: @ip.data_fim
    fill_in "Data inicio", with: @ip.data_inicio
    fill_in "Filial", with: @ip.filial_id
    fill_in "Ip", with: @ip.ip
    fill_in "Setor", with: @ip.setor
    fill_in "Usuario", with: @ip.usuario
    click_on "Update Ip"

    assert_text "Ip was successfully updated"
    click_on "Back"
  end

  test "destroying a Ip" do
    visit ips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ip was successfully destroyed"
  end
end
