json.extract! student_account, :id, :name, :email, :password, :created_at, :updated_at
json.url student_account_url(student_account, format: :json)
