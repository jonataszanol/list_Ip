require "application_system_test_case"

class FiliaisTest < ApplicationSystemTestCase
  setup do
    @filial = filiais(:one)
  end

  test "visiting the index" do
    visit filiais_url
    assert_selector "h1", text: "Filiais"
  end

  test "creating a Filial" do
    visit filiais_url
    click_on "New Filial"

    fill_in "Descricao", with: @filial.descricao
    click_on "Create Filial"

    assert_text "Filial was successfully created"
    click_on "Back"
  end

  test "updating a Filial" do
    visit filiais_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @filial.descricao
    click_on "Update Filial"

    assert_text "Filial was successfully updated"
    click_on "Back"
  end

  test "destroying a Filial" do
    visit filiais_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Filial was successfully destroyed"
  end
end
