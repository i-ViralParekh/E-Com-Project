require "application_system_test_case"

class LUsersTest < ApplicationSystemTestCase
  setup do
    @l_user = l_users(:one)
  end

  test "visiting the index" do
    visit l_users_url
    assert_selector "h1", text: "L Users"
  end

  test "creating a L user" do
    visit l_users_url
    click_on "New L User"

    fill_in "Name", with: @l_user.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create L user"

    assert_text "L user was successfully created"
    click_on "Back"
  end

  test "updating a L user" do
    visit l_users_url
    click_on "Edit", match: :first

    fill_in "Name", with: @l_user.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Update L user"

    assert_text "L user was successfully updated"
    click_on "Back"
  end

  test "destroying a L user" do
    visit l_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "L user was successfully destroyed"
  end
end
