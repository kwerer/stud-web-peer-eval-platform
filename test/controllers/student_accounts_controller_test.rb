require "test_helper"

class StudentAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_account = student_accounts(:one)
  end

  test "should get index" do
    get student_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_student_account_url
    assert_response :success
  end

  test "should create student_account" do
    assert_difference("StudentAccount.count") do
      post student_accounts_url, params: { student_account: { email: @student_account.email, name: @student_account.name, password: @student_account.password } }
    end

    assert_redirected_to student_account_url(StudentAccount.last)
  end

  test "should show student_account" do
    get student_account_url(@student_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_account_url(@student_account)
    assert_response :success
  end

  test "should update student_account" do
    patch student_account_url(@student_account), params: { student_account: { email: @student_account.email, name: @student_account.name, password: @student_account.password } }
    assert_redirected_to student_account_url(@student_account)
  end

  test "should destroy student_account" do
    assert_difference("StudentAccount.count", -1) do
      delete student_account_url(@student_account)
    end

    assert_redirected_to student_accounts_url
  end
end
