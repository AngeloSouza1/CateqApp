require "application_system_test_case"

class PostagemsTest < ApplicationSystemTestCase
  setup do
    @postagem = postagems(:one)
  end

  test "visiting the index" do
    visit postagems_url
    assert_selector "h1", text: "Postagems"
  end

  test "should create postagem" do
    visit postagems_url
    click_on "New postagem"

    fill_in "Content", with: @postagem.content
    fill_in "Title", with: @postagem.title
    fill_in "User", with: @postagem.user_id
    click_on "Create Postagem"

    assert_text "Postagem was successfully created"
    click_on "Back"
  end

  test "should update Postagem" do
    visit postagem_url(@postagem)
    click_on "Edit this postagem", match: :first

    fill_in "Content", with: @postagem.content
    fill_in "Title", with: @postagem.title
    fill_in "User", with: @postagem.user_id
    click_on "Update Postagem"

    assert_text "Postagem was successfully updated"
    click_on "Back"
  end

  test "should destroy Postagem" do
    visit postagem_url(@postagem)
    click_on "Destroy this postagem", match: :first

    assert_text "Postagem was successfully destroyed"
  end
end
