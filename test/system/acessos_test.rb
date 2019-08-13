require "application_system_test_case"

class AcessosTest < ApplicationSystemTestCase
  setup do
    @acesso = acessos(:one)
  end

  test "visiting the index" do
    visit acessos_url
    assert_selector "h1", text: "Acessos"
  end

  test "creating a Acesso" do
    visit acessos_url
    click_on "New Acesso"

    fill_in "Descricao", with: @acesso.descricao
    fill_in "Obs", with: @acesso.obs
    click_on "Create Acesso"

    assert_text "Acesso was successfully created"
    click_on "Back"
  end

  test "updating a Acesso" do
    visit acessos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @acesso.descricao
    fill_in "Obs", with: @acesso.obs
    click_on "Update Acesso"

    assert_text "Acesso was successfully updated"
    click_on "Back"
  end

  test "destroying a Acesso" do
    visit acessos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Acesso was successfully destroyed"
  end
end
