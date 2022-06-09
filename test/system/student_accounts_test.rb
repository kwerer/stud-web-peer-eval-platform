require "application_system_test_case"

class StudentAccountsTest < ApplicationSystemTestCase
  setup do
    @student_account = student_accounts(:one)
  end

  test "visiting the index" do
    visit student_accounts_url
    assert_selector "h1", text: "Student accounts"
  end

  test "should create student account" do
    visit student_accounts_url
    click_on "New student account"

    fill_in "Email", with: @student_account.email
    fill_in "Name", with: @student_account.name
    fill_in "Password", with: @student_account.password
    click_on "Create Student account"

    assert_text "Student account was successfully created"
    click_on "Back"
  end

  test "should update Student account" do
    visit student_account_url(@student_account)
    click_on "Edit this student account", match: :first

    fill_in "Email", with: @student_account.email
    fill_in "Name", with: @student_account.name
    fill_in "Password", with: @student_account.password
    click_on "Update Student account"

    assert_text "Student account was successfully updated"
    click_on "Back"
  end

  test "should destroy Student account" do
    visit student_account_url(@student_account)
    click_on "Destroy this student account", match: :first

    assert_text "Student account was successfully destroyed"
  end
end
