require "application_system_test_case"

class AulasTest < ApplicationSystemTestCase
  setup do
    @aula = aulas(:one)
  end

  test "visiting the index" do
    visit aulas_url
    assert_selector "h1", text: "Aulas"
  end

  test "should create aula" do
    visit aulas_url
    click_on "New aula"

    fill_in "Content", with: @aula.content
    fill_in "Title", with: @aula.title
    click_on "Create Aula"

    assert_text "Aula was successfully created"
    click_on "Back"
  end

  test "should update Aula" do
    visit aula_url(@aula)
    click_on "Edit this aula", match: :first

    fill_in "Content", with: @aula.content
    fill_in "Title", with: @aula.title
    click_on "Update Aula"

    assert_text "Aula was successfully updated"
    click_on "Back"
  end

  test "should destroy Aula" do
    visit aula_url(@aula)
    click_on "Destroy this aula", match: :first

    assert_text "Aula was successfully destroyed"
  end
end
